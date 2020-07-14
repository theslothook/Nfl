import tensorflow as tf
import numpy as np
import os
from datetime import date
from sklearn.metrics import roc_auc_score
from sklearn.metrics import confusion_matrix
from sklearn.metrics import accuracy_score
from sklearn.metrics import f1_score
from scipy.special import softmax
from sklearn.metrics import precision_score
from sklearn.metrics import recall_score
from sklearn.metrics import ConfusionMatrixDisplay
from mlp_utilities import transform,\
    write_data_transform_params, test_transform_features, write_graph_json



today = date.today()


class MLP:
    def __init__(self, model_name='mlp_model', model_dir=None,
                     num_iterations=500, lr=0.005, l1=0.05, l2=0.05, beta=0.5, num_epochs=100, batch_size=500,
                 init_type='He', number_of_hidden_units_1=50, number_of_hidden_units_2=50,
                 number_of_hidden_units_3=50, number_of_hidden_units_4=50, number_of_hidden_units_5=50,
                 constant=1, l1_scope=None, data=None, label=None, display_set=10, prev_train_metric=0,
                 max_val_metric=0, earlystop_cnt=0, earlystop_threshold=15, dropout=0.85, bn_epsilon=1e-3
                 ):

        self.model_dir = model_dir
        self.model_name = model_name

        if not os.path.exists(self.model_dir):
            os.mkdir(self.model_dir)

        self.model_path = os.path.join(self.model_dir, self.model_name)

        self.learning_rate = lr
        self.batch_size = batch_size

        self.num_epochs = num_epochs
        self.batch_size = batch_size
        self.num_iterations = num_iterations
        self.DISPLAY_STEP = display_set
        self.prev_train_metric = prev_train_metric
        self.max_val_metric = max_val_metric
        self.earlystop_cnt = earlystop_cnt
        self.earlystop_threshold = earlystop_threshold
        self.highest_test_auc = None

        self.init_type = init_type
        self.N_HIDDEN_1 = number_of_hidden_units_1
        self.N_HIDDEN_2 = number_of_hidden_units_2
        self.N_HIDDEN_3 = number_of_hidden_units_3
        self.N_HIDDEN_4 = number_of_hidden_units_4
        self.N_HIDDEN_5 = number_of_hidden_units_5

        # model inputs
        self.N_INPUT = data.shape[1]
        self.N_CLASSES = label.shape[1]
        self.X = None
        self.Y = None

        # model parameters
        self.w1 = None
        self.w2 = None
        self.b1 = None
        self.b2 = None
        self.w3 = None
        self.b3 = None
        self.w_out = None
        self.b_out = None

        # regularizers
        self.l1 = l1
        self.l2 = l2
        self.beta = beta
        self.constant = constant
        self.scope = l1_scope
        self.l2_regularization = None
        self.l1_regularization = None

        # optimized parameters
        self.yhat = None
        self.predict = None
        self.binary = None
        self.COST = None
        self.OPTIMIZER = None
        self.correct_prediction = None
        self.prob = dropout
        self.bn_epsilon = bn_epsilon
        self.training = True

        self.tf_session = None
        self.tf_saver = None

    def fit(self, train_x, train_y, valid_x, valid_y, test_x, test_y, restore_previous_model=False,
            transformation='min_max'):

        self.is_traing_pl = tf.placeholder_with_default(True, shape=())
        self._build_model()

        with tf.Session() as self.tf_session:
            # write_data_transform_params(train_x, train_y, self.model_dir, self.model_name)
            self._initialize_tf_utilities_and_ops(restore_previous_model)
            results_dict = self._train_model(train_x, train_y, valid_x, valid_y, transformation)
            # write_graph_json(tf.get_default_graph().get_operations(), self.model_dir, self.model_name, today)
            self._test_model(test_x, test_y, train_x, transformation)
            self.tf_saver.save(self.tf_session, self.model_path)
            return results_dict

    def _train_model(self, train_x, train_y, valid_x, valid_y, transformation):

        """ Train the model.
        :param train_set: training set
        :param validation_set: validation set. optional, default None
        :return: self
        """

        train_x_transformed = transform(train_x, train_x, transformation)
        # train_x_transformed = train_x
        train_auc = 0
        train_f1_score = 0
        val_auc = 0
        val_f1_score = 0
        sensitivity = 0
        specificity = 0
        # outfile = open(self.model_dir + str(self.model_name) + '_log' + '.txt', 'w')
        for epoch in range(self.num_epochs):
            self.training = True
            epoch_cost = 0
            batches = self.gen_batches(train_x_transformed, train_y, self.batch_size)
            for batch in batches:
                _, c = self.tf_session.run(
                    [self.OPTIMIZER, self.COST], feed_dict={self.X: batch[0],
                                                            self.Y: batch[1], self.is_traing_pl: True})
                epoch_cost += c
            if (epoch + 1) % self.DISPLAY_STEP == 0:

                def ssoftmax(x):
                    """Compute softmax values for each sets of scores in x."""
                    e_x = np.exp(x - np.max(x))
                    return e_x / e_x.sum()

                # train auc
                self.training = False
                valid_x_transformed = transform(valid_x, train_x, transformation)
                # valid_x_transformed = valid_x

                cur_train_auc = roc_auc_score(train_y, softmax(self.yhat.eval({self.X: train_x_transformed,
                                                                                  self.is_traing_pl: False}), axis=1))

                cur_train_f1_score = f1_score(np.argmax(np.array(train_y), axis=1),
                                            np.argmax(softmax(self.yhat.eval({self.X: train_x_transformed,
                                                             self.is_traing_pl: False}), axis=1), axis=1),
                                      average='weighted')

                cur_val_auc = roc_auc_score(valid_y, softmax(self.yhat.eval({self.X: valid_x_transformed,
                                                                                self.is_traing_pl: False}), axis=1))

                preds = softmax(self.yhat.eval({self.X: valid_x_transformed,
                                                             self.is_traing_pl: False}).tolist())

                # cur_val_f1 = f1_score(np.argmax(np.array(valid_y), axis=1), preds, average='weighted')
                #
                # cur_val_accuracy = accuracy_score(np.argmax(np.array(valid_y), axis=1), preds)

                cur_val_f1 = f1_score(np.argmax(np.array(valid_y), axis=1), np.argmax(preds, axis=1), average='macro')

                cur_val_accuracy = accuracy_score(np.argmax(np.array(valid_y), axis=1), np.argmax(preds, axis=1))


                print("Epoch:", '%04d' % (epoch + 1),
                      "training cost:", '{:.9f}'.format(epoch_cost),
                      "training auc=", "{:.9f}".format(cur_train_auc),
                      "valid accuracy=", "{:.9f}".format(cur_val_accuracy),
                      "valid auc=", "{:.9f}".format(cur_val_auc),
                      "valid f1=", "{:.9f}".format(cur_val_f1)
                      )

                train_auc = cur_train_auc
                train_f1_score = cur_train_f1_score
                val_auc = cur_val_auc
                val_f1_score = cur_val_f1

                if cur_train_auc > self.max_val_metric:
                    if cur_val_auc > self.prev_train_metric or cur_train_auc >= 1:
                        if self.earlystop_cnt == self.earlystop_threshold:
                            print("early stopped on " + str(epoch))
                            break
                        else:
                            print("overfitting warning: " + str(self.earlystop_cnt))
                            self.earlystop_cnt += 1
                    else:
                        if self.earlystop_cnt != 0:
                            self.earlystop_cnt -= 1
                else:
                    if self.earlystop_cnt != 0:
                        self.earlystop_cnt -= 1
                    self.max_val_metric = cur_train_auc
                self.prev_train_metric = cur_train_auc


        # outfile.close()
        results_dict = {'final_train_auc': train_auc, 'final_train_f1_score': train_f1_score,
                        'final_valid_auc': val_auc, 'final_val_f1_score': val_f1_score,
                        'final_sensitivity': sensitivity, 'final_specificity': specificity}

        return results_dict

    def _test_model(self, test_x, test_y, train_x, transformation):
        self.training = False
        print("Optimization Finished!")
        test_x_transformed = transform(test_x, train_x, transformation)
        test_prediction = softmax(self.yhat.eval({self.X: test_x_transformed, self.is_traing_pl: False}).tolist())
        preds = np.argmax(test_prediction, axis=1)

        print("Test Accuracy Score %r" % accuracy_score(np.argmax(np.array(test_y), axis=1), preds))
        print("test auc %g" % roc_auc_score(test_y, test_prediction))
        print("Test F1 Score %r" % f1_score(np.argmax(np.array(test_y), axis=1), preds, average='weighted'))
        print("confusion matrix test \n%r" % confusion_matrix(np.argmax(np.array(test_y), axis=1), preds))
        print("precision score  test \n%r" % precision_score(np.argmax(np.array(test_y), axis=1), preds))
        print("recall score test \n%r" % recall_score(np.argmax(np.array(test_y), axis=1), preds))
        # cm_display = ConfusionMatrixDisplay(confusion_matrix(np.argmax(np.array(test_y), axis=1), preds)).plot()

    def scoring(self, test_x, train_x, transformation):

        with tf.compat.v1.Session() as self.tf_session:
            self._initialize_tf_utilities_and_ops(restore_previous_model=True)
            self.tf_saver.restore(self.tf_session, self.model_path)
            data_x, train_x = np.array(test_x), np.array(train_x)
            print("Optimization Finished!")
            data_x_transformed = transform(data_x, train_x, transformation)
            self.training = False
            # test_prediction = softmax(self.yhat.eval({self.X: data_x_transformed, self.is_traing_pl: False}).tolist())
            test_prediction = softmax(self.yhat.eval({self.X: data_x_transformed}).tolist())
            preds = np.argmax(test_prediction, axis=1)

        return test_prediction, preds

    def gen_batches(self, data, label, batch_size):
        """ Divide input data into batches.
        :param data: input data
        :param batch_size: size of each batch
        :return: data divided into batches
        """
        s = np.arange(data.shape[0])
        np.random.shuffle(s)

        data = np.array(data)[s]
        label = np.array(label)[s]

        for i in range(0, data.shape[0], batch_size):
            yield data[i:i + batch_size], label[i:i + batch_size]

    def batch_norm_wrapper(self, inputs, training, decay=0.999):
        scale = tf.Variable(tf.ones([inputs.get_shape()[-1]]))
        beta = tf.Variable(tf.zeros([inputs.get_shape()[-1]]))
        pop_mean = tf.Variable(tf.zeros([inputs.get_shape()[-1]]), trainable=False)
        pop_var = tf.Variable(tf.ones([inputs.get_shape()[-1]]), trainable=False)

        if training:
            batch_mean, batch_var = tf.nn.moments(inputs, [0])
            train_mean = tf.compat.v1.assign(pop_mean, pop_mean * decay + batch_mean * (1 - decay))
            train_var = tf.compat.v1.assign(pop_var, pop_var * decay + batch_var * (1 - decay))
            with tf.control_dependencies([train_mean, train_var]):
                return tf.nn.batch_normalization(inputs, batch_mean, batch_var, beta, scale, self.bn_epsilon)

        else:
            return tf.nn.batch_normalization(inputs, pop_mean, pop_var, beta, scale, self.bn_epsilon)

    def init_weights(self, shape):
        """ Weight initialization """
        weights = tf.Variable(tf.truncated_normal(shape, mean=0, stddev=.5))  # tf.random.normal(shape, stddev=0.1)
        return tf.Variable(weights)

    def xavier_init(self, x, fan_in, fan_out):
        """ Xavier initialization of network weights"""

        # https://stackoverflow.com/questions/33640581/how-to-do-xavier-initialization-on-tensorflow
        low = -self.constant * np.sqrt(6.0 / (fan_in + fan_out))
        high = self.constant * np.sqrt(6.0 / (fan_in + fan_out))

        return tf.Variable(tf.random.uniform((fan_in, fan_out),
                                             minval=low, maxval=high,
                                             dtype=tf.float32))


        # https: // stackoverflow.com / questions / 51849044 / how - to - use - he - initialization - in -tensorflow


    def he_init(self, x, fan_in, fan_out):
        """ Xavier initialization of network weights"""

        # https://stackoverflow.com/questions/51849044/how-to-use-he-initialization-in-tensorflow

        stddev = np.sqrt(1 / fan_in)

        return tf.Variable(tf.random.normal(shape=(fan_in, fan_out), mean=0, stddev=stddev, dtype=tf.float32))

        # return tf.Variable(tf.distributions.Normal(loc=0.0, scale=stddev))


    def _initialize_tf_utilities_and_ops(self, restore_previous_model):

        """ Initialize TensorFlow operations: summaries, init operations, saver, summary_writer.
        Restore a previously trained model if the flag restore_previous_model is true.
        """

        init_op = tf.compat.v1.global_variables_initializer()
        self.tf_saver = tf.compat.v1.train.Saver()

        self.tf_session.run(init_op)

        if restore_previous_model:
            self.tf_saver.restore(self.tf_session, self.model_path)

    def get_weights(self, weight):
        if self.init_type == 'Xavier':
            WEIGHTS = {
                'h1': self.xavier_init('h1', self.N_INPUT, self.N_HIDDEN_1),
                'h2': self.xavier_init('h2', self.N_HIDDEN_1, self.N_HIDDEN_2),
                'h3': self.xavier_init('h3', self.N_HIDDEN_2, self.N_HIDDEN_3),
                'h4': self.xavier_init('h4', self.N_HIDDEN_3, self.N_HIDDEN_4),
                'h5': self.xavier_init('h5', self.N_HIDDEN_4, self.N_HIDDEN_5),
                'out': self.xavier_init('out', self.N_HIDDEN_5, self.N_CLASSES)
            }
        elif self.init_type == 'He':
            WEIGHTS = {
                'h1': self.he_init('h1', self.N_INPUT, self.N_HIDDEN_1),
                'h2': self.he_init('h2', self.N_HIDDEN_1, self.N_HIDDEN_2),
                'h3': self.he_init('h3', self.N_HIDDEN_2, self.N_HIDDEN_3),
                'h4': self.he_init('h4', self.N_HIDDEN_3, self.N_HIDDEN_4),
                'h5': self.he_init('h5', self.N_HIDDEN_4, self.N_HIDDEN_5),
                'out': self.he_init('out', self.N_HIDDEN_5, self.N_CLASSES)
            }
        else:
            WEIGHTS = {
                'h1': self.init_weights((self.N_INPUT, self.N_HIDDEN_1)),
                'h2': self.init_weights((self.N_HIDDEN_1, self.N_HIDDEN_2)),
                'h3': self.init_weights((self.N_HIDDEN_2, self.N_HIDDEN_3)),
                'h4': self.init_weights((self.N_HIDDEN_3, self.N_HIDDEN_4)),
                'h5': self.init_weights((self.N_HIDDEN_4, self.N_HIDDEN_5)),
                'out': self.init_weights((self.N_HIDDEN_5, self.N_CLASSES))
            }
        return WEIGHTS[weight]

    def get_biases(self, bias):

        BIASES = {
            'b1': tf.Variable(tf.random.normal([self.N_HIDDEN_1])),
            'b2': tf.Variable(tf.random.normal([self.N_HIDDEN_2])),
            'b3': tf.Variable(tf.random.normal([self.N_HIDDEN_3])),
            'b4': tf.Variable(tf.random.normal([self.N_HIDDEN_4])),
            'b5': tf.Variable(tf.random.normal([self.N_HIDDEN_5])),
            'out': tf.Variable(tf.random.normal([self.N_CLASSES]))
        }

        return BIASES[bias]

    def _build_model(self):

        self.X, self.Y = self._create_placeholders()

        self.l1_regularization, self.l2_regularization = self._create_regularizers()

        layer_1 = tf.add(tf.matmul(self.X, self.get_weights('h1')), self.get_biases('b1'))
        layer_1 = tf.nn.selu(layer_1)
        layer_1_dropout = tf.layers.dropout(layer_1, rate=1 - self.prob, training=self.is_traing_pl)
        layer_2 = tf.add(tf.matmul(layer_1_dropout, self.get_weights('h2')), self.get_biases('b2'))
        # layer_2 = self.batch_norm_wrapper(layer_2, training=self.training)
        layer_2 = tf.contrib.layers.layer_norm(layer_2, trainable=self.training)
        layer_2 = tf.nn.selu(layer_2)
        layer_2_dropout = tf.layers.dropout(layer_2, rate=1 - self.prob, training=self.is_traing_pl)
        layer_3 = tf.add(tf.matmul(layer_2_dropout, self.get_weights('h3')), self.get_biases('b3'))
        # layer_3 = self.batch_norm_wrapper(layer_3, training=self.training)
        layer_3 = tf.contrib.layers.layer_norm(layer_3, trainable=self.training)
        layer_3 = tf.nn.selu(layer_3)
        layer_3_dropout = tf.layers.dropout(layer_3, rate=1 - self.prob, training=self.is_traing_pl)

        layer_4 = tf.add(tf.matmul(layer_3_dropout, self.get_weights('h4')), self.get_biases('b4'))
        layer_4 = self.batch_norm_wrapper(layer_4, training=self.training)
        # layer_4 = tf.contrib.layers.layer_norm(layer_4, trainable=self.training)
        layer_4 = tf.nn.selu(layer_4)
        layer_4_dropout = tf.layers.dropout(layer_4, rate=1 - self.prob, training=self.is_traing_pl)

        layer_5 = tf.add(tf.matmul(layer_4_dropout, self.get_weights('h5')), self.get_biases('b5'))
        layer_5 = self.batch_norm_wrapper(layer_5, training=self.training)
        # layer_4 = tf.contrib.layers.layer_norm(layer_4, trainable=self.training)
        layer_5 = tf.nn.selu(layer_5)
        layer_5_dropout = tf.layers.dropout(layer_5, rate=1 - self.prob, training=self.is_traing_pl)

        out_layer = tf.add(tf.matmul(layer_1_dropout, self.get_weights('out')), self.get_biases('out'))

        self.yhat = out_layer + self.beta * (self.l2 * self.l2_regularization) + (1 - self.beta) \
                    * self.l1_regularization

        # Weighted Loss
        self.COST = tf.math.reduce_mean(tf.nn.weighted_cross_entropy_with_logits(labels=self.Y, logits=self.yhat,
                                                                                pos_weight=1.5))

        # self.COST = tf.math.reduce_mean(tf.nn.sigmoid_cross_entropy_with_logits(labels=self.Y, logits=self.yhat))

        self.OPTIMIZER = tf.compat.v1.train.AdamOptimizer(learning_rate=self.learning_rate).minimize(self.COST)

        self.predict = tf.nn.softmax(self.yhat)

    def _create_placeholders(self):

        """ Create the TensorFlow placeholders for the model.
        :return: tuple(input(shape(None, num_visible)),
                       hrand(shape(None, num_hidden)))
        """

        X = tf.placeholder(tf.float32, shape=[None, self.N_INPUT], name='X')
        Y = tf.placeholder(tf.float32, shape=[None, self.N_CLASSES], name='Y')
        return X, Y

    def _create_variables(self):

        """ Create the TensorFlow variables for the model.
        :return: tuple(weights(shape(num_visible, num_hidden),
                       hidden bias(shape(num_hidden)),
                       visible bias(shape(num_visible)))
        """

        w1 = self.get_weights('h1')
        b1 = self.get_biases('b1')
        w2 = self.get_weights('h2')
        b2 = self.get_biases('b2')
        w_out = self.get_weights('out')
        b_out = self.get_biases('out')

        return w1, b1, w2, b2, w_out, b_out

    def _create_regularizers(self):

        l1_regularizer = tf.contrib.layers.l1_regularizer(scale=self.l1, scope=self.scope)

        l2_regularization = tf.nn.l2_loss(self.get_weights('h1')) \
                            + tf.nn.l2_loss(self.get_weights('h2')) \
                            + tf.nn.l2_loss(self.get_weights('out')) \
                            + tf.nn.l2_loss(self.get_weights('h3')) \
                            # + tf.nn.l2_loss(self.get_weights('h4')) \
                            # + tf.nn.l2_loss(self.get_weights('h5')) \

        l1_regularization = tf.contrib.layers.apply_regularization(l1_regularizer,
                                                                           [self.get_weights('h1'),
                                                                            self.get_weights('h2'),
                                                                            self.get_weights('h3'),
                                                                            # self.get_weights('h4'),
                                                                            # self.get_weights('h5'),
                                                                            self.get_weights('out')
                                                                            ])

        return l1_regularization, l2_regularization

    def load_model(self, data, hidden_1=100, hidden_2=100, hidden_3=100, hidden_4=-100, hidden_5=100, num_iterations=1000, is_training_pl=True,
                   model_path=None):

        """ Load a trained model from disk. The shape of the model
        (num_visible, num_hidden) and the number of gibbs sampling steps
        must be known in order to restore the model.
        :param shape: tuple(num_visible, num_hidden)
        :param gibbs_sampling_steps:
        :param model_path:
        :return: self

        self.num_visible, self.num_hidden = shape[0], shape[1]
        self.gibbs_sampling_steps = gibbs_sampling_steps

        tf.reset_default_graph()

        self._build_model()

        init_op = tf.global_variables_initializer()
        self.tf_saver = tf.train.Saver()

        with tf.Session() as self.tf_session:
            self.tf_session.run(init_op)
            self.tf_saver.restore(self.tf_session, model_path)


        """
        tf.compat.v1.reset_default_graph()
        self.N_INPUT = data.shape[1]
        self.N_HIDDEN_1, self.N_HIDDEN_2, self.N_HIDDEN_3, self.N_HIDDEN_4, self.N_HIDDEN_5 = \
            hidden_1, hidden_2, hidden_3, hidden_4, hidden_5
        self.num_iterations = num_iterations

        self.is_traing_pl = is_training_pl

        self._build_model()

        init_op = tf.compat.v1.global_variables_initializer()
        self.tf_saver = tf.compat.v1.train.Saver()

        with tf.compat.v1.Session() as self.tf_session:
            self.tf_session.run(init_op)
            self.tf_saver.restore(self.tf_session, model_path)
            print("Model finished loading")


