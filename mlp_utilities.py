import numpy as np
import json
import pandas as pd

def min_max(x, y):
    x, y = np.array(x), np.array(y)
    for c in range(x.shape[1]):
        cols_min = np.min(y[:, c])
        cols_max = np.max(y[:, c])
        if cols_min == 0 and cols_max == 0:
            x[:, c] = 0
        else:
            x[:, c] = ((x[:, c] - cols_min) / (cols_max - cols_min))

    return x



def softmax(x):
    """Compute softmax values for each sets of scores in x."""
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()




def robust_standardizer(x, y, lower=0.25, upper=0.75):
    x = np.array(x)
    y = np.array(y)
    for c in range(x.shape[1]):
        cols_median = np.median(y[:, c])
        cols_lower = np.quantile(y[:, c], lower)
        cols_upper = np.quantile(y[:, c], upper)

        if cols_median == 0:
            x[:, c] = 0
        else:
            x[:, c] = ((x[:, c] - cols_median) / (cols_upper - cols_lower))

    return x


def standardizer(x, y):
    x, y = np.array(x), np.array(y)
    for c in range(x.shape[1]):
        cols_mean = np.mean(y[:, c])
        cols_std = np.std(y[:, c])
        if cols_mean == 0 or cols_std == 0:
            print(c)
        x[:, c] = (x[:, c] - cols_mean) / cols_std

    return x


def inverse_standardizer(x, y):
    for c in range(x.shape[1]):
        cols_mean = np.mean(y[:, c])
        cols_std = np.std(y[:, c])
        x[:, c] = (x[:, c] * cols_std) + cols_mean

    return x


def inverse_min_max(x, y):
    x, y = np.array(x), np.array(y)
    for c in range(x.shape[1]):
        cols_min = np.min(y[:, c])
        cols_max = np.max(y[:, c])
        x[:, c] = (x[:, c] * (cols_max - cols_min)) + cols_min

    return x


def inverse_robust_standardizer(x, y, lower=0.25, upper=0.75):
    x = np.array(x)
    y = np.array(y)
    for c in range(x.shape[1]):
        cols_median = np.median(y[:, c])
        cols_lower = np.quantile(y[:, c], lower)
        cols_upper = np.quantile(y[:, c], upper)
        if cols_median == 0:
            x[:, c] = 0
        else:
            x[:, c] = ((x[:, c] * (cols_upper - cols_lower)) + cols_median)

    return x


# def mean_confidence_interval(data, confidence=0.95):
#     a = 1.0 * np.array(data)
#     n = len(a)
#     m, se = np.mean(a), stats.stats.sem(a)
#     h = se * t.ppf((1 + confidence) / 2., n - 1)
#     return m, m - h, m + h


def transform(x, y, tranformation=None, inverse=False):
    if inverse is False:
        if tranformation == 'standardize':
            z = standardizer(x, y)
        elif tranformation == 'robust':
            z = robust_standardizer(x, y)
        else:
            z = min_max(x, y)
    else:
        if tranformation == 'standardize':
            z = inverse_standardizer(x, y)
        elif tranformation == 'robust':
            z = inverse_robust_standardizer(x, y)
        else:
            z = inverse_min_max(x, y)
    return z


def symetric_mean_absolute_error(actual: np.ndarray, predicted: np.ndarray, EPSILON=1e-10):
    """
    Symmetric Mean Absolute Percentage Error
    Note: result is NOT multiplied by 100
    """
    return np.mean(2.0 * np.abs(actual - predicted) / ((np.abs(actual) + np.abs(predicted)) + EPSILON))


def write_data_transform_params(x, y, file_path, model_name, lower=0.25, upper=0.75):
    x = np.array(x)

    params_dict = {}
    for c in range(x.shape[1]):
        cols_median = np.median(x[:, c])
        cols_lower = np.quantile(x[:, c], lower)
        cols_upper = np.quantile(x[:, c], upper)
        cols_mean = np.mean(x[:, c])
        cols_std = np.std(x[:, c])
        cols_min = np.min(x[:, c])
        cols_max = np.max(x[:, c])
        params_dict[str(c) + ' - cols_median'] = cols_median
        params_dict[str(c) + ' - cols_lower'] = cols_lower
        params_dict[str(c) + ' - cols_upper'] = cols_upper
        params_dict[str(c) + ' - cols_mean'] = cols_mean
        params_dict[str(c) + ' - cols_std'] = cols_std
        params_dict[str(c) + ' - cols_min'] = cols_min
        params_dict[str(c) + ' - cols_max'] = cols_max

    # y_median = np.float(np.median(y, axis=1))
    # y_lower = np.float(np.quantile(y, lower, axis=1))
    # y_upper = np.float(np.quantile(y, upper, axis=1))
    # y_mean = np.float(np.mean(y, axis=1))
    # y_std = np.float(np.std(y, axis=1))
    # y_min = np.float(np.min(y, axis=1))
    # y_max = np.float(np.max(y, axis=1))
    #
    # params_dict['sd'] = y_median
    # params_dict['sd'] = y_lower
    # params_dict['sd'] = y_upper
    # params_dict['sd'] = y_mean
    # params_dict['asd'] = y_std
    # params_dict['sfdf'] = y_min
    # params_dict['asddf'] = y_max

    with open(file_path + '/train_params_dict_' + str(model_name), 'w') as fp:
        json.dump(params_dict, fp)


def write_graph_json(graph, file_path, model_name, timestamp):

    graph_dict = {}
    for op in graph:
        graph_dict[str(op.name)] = str(op.node_def)
        # graph_dict.update(model.to_graph(op.__dict__))

    with open(file_path + '/params_log' + "-" + str(model_name) + '-' + str(timestamp), 'w') as fp:
        json.dump(graph_dict, fp)


def test_transform_features(x, filepath, model_name,  transform='min_max'):
    x = np.array(x)
    with open(filepath + 'train_params_dict_' + model_name) as json_file:
        data = json.load(json_file)
    if transform == 'standardize':
        for c in range(x.shape[1]):
            cols_mean = data[str(c) + ' - cols_mean']
            cols_std = data[str(c) + ' - cols_std']
            x[:, c] = (x[:, c] - cols_mean) / cols_std
    elif transform == 'robust':
        for c in range(x.shape[1]):
            cols_median = data[str(c) + ' - cols_median']
            cols_lower = data[str(c) + ' - cols_lower']
            cols_upper = data[str(c) + ' - cols_upper']
            if cols_median == 0:
                x[:, c] = 0
            else:
                x[:, c] = ((x[:, c] - cols_median)/(cols_upper - cols_lower))
    else:
        for c in range(x.shape[1]):
            cols_min = data[str(c) + ' - cols_min']
            cols_max = data[str(c) + ' - cols_max']
            x[:, c] = (x[:, c]  - + cols_min)/(cols_max - cols_min)
    return x


def test_inverse_transform_label(y, filepath, transform='min_max'):
    y = np.array(y)
    with open(filepath + '/train_params_dict') as json_file:
        data = json.load(json_file)
    if transform == 'standardize':
        cols_mean = data['sdf']
        cols_std = data['dfdf']
        y = (y * cols_std) + cols_mean
    elif transform == 'robust':
        cols_median = data['sad']
        cols_lower = data['sdf']
        cols_upper = data['sdf']
        if cols_median == 0:
            y = 0
        else:
            y = ((y * (cols_upper - cols_lower)) + cols_median)
    else:
        cols_min = data['sdf']
        cols_max = data['sdf']
        y = (y * (cols_max - cols_min)) + cols_min

    return y


def train_validate_test_split(df, label, train_percent=.7, validate_percent=0.15):
    m = len(df)
    train_end = int(train_percent * m)
    if validate_percent == 0:
        validate_end = int(train_end)
    else:
        validate_end = int(validate_percent * m) + train_end
    TRAIN_X = df[:train_end]
    TRAIN_Y = label[:train_end]
    # TRAIN_Y = pd.get_dummies(TRAIN_Y).values
    VALID_X = df[train_end:validate_end]
    VALID_Y = label[train_end:validate_end]
    # VALID_Y = pd.get_dummies(VALID_Y).values
    TEST_X = df[validate_end:]
    TEST_Y = label[validate_end:]
    # TEST_Y = pd.get_dummies(TEST_Y).values

    return TRAIN_X, TRAIN_Y, VALID_X, VALID_Y, TEST_X, TEST_Y
