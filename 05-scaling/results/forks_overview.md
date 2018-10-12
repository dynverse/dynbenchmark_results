# forks
![Overview](forks.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/forks_method_error_1.png)

 * Number of instances: 36
 * Dataset ids: scaling_0001, scaling_0002, scaling_0003, scaling_0004, scaling_0006, scaling_0008, scaling_0010, scaling_0012, scaling_0016, scaling_0019, scaling_0022, scaling_0025, scaling_0041, scaling_0043, scaling_0045, scaling_0047, scaling_0216, scaling_0244, scaling_0268, scaling_0309, scaling_0371, scaling_0430, scaling_0486, scaling_0498, scaling_0583, scaling_0649, scaling_0732, scaling_0820, scaling_0889, scaling_1023, scaling_1108, scaling_1214, scaling_1339, scaling_1477, scaling_1588, scaling_1692

Last 10 lines of scaling_0001:
```
    self._fit_transform(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/manifold/isomap.py", line 116, in _fit_transform
    mode='distance', n_jobs=self.n_jobs)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/graph.py", line 103, in kneighbors_graph
    return X.kneighbors_graph(X=query, n_neighbors=n_neighbors, mode=mode)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 489, in kneighbors_graph
    X, n_neighbors, return_distance=True)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 347, in kneighbors
    (train_size, n_neighbors)
ValueError: Expected n_neighbors <= n_samples,  but n_samples = 10, n_neighbors = 11
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/forks_method_error_2.png)

 * Number of instances: 155
 * Dataset ids: scaling_0013, scaling_0027, scaling_0029, scaling_0030, scaling_0038, scaling_0039, scaling_0050, scaling_0070, scaling_0074, scaling_0075, scaling_0098, scaling_0102, scaling_0104, scaling_0105, scaling_0106, scaling_0120, scaling_0137, scaling_0139, scaling_0150, scaling_0170, scaling_0174, scaling_0178, scaling_0191, scaling_0207, scaling_0213, scaling_0225, scaling_0226, scaling_0228, scaling_0238, scaling_0240, scaling_0251, scaling_0255, scaling_0269, scaling_0275, scaling_0276, scaling_0277, scaling_0298, scaling_0299, scaling_0319, scaling_0321, scaling_0322, scaling_0323, scaling_0327, scaling_0329, scaling_0330, scaling_0338, scaling_0340, scaling_0341, scaling_0346, scaling_0350, scaling_0361, scaling_0366, scaling_0370, scaling_0375, scaling_0384, scaling_0389, scaling_0390, scaling_0398, scaling_0412, scaling_0424, scaling_0436, scaling_0439, scaling_0440, scaling_0442, scaling_0448, scaling_0452, scaling_0453, scaling_0454, scaling_0455, scaling_0500, scaling_0502, scaling_0503, scaling_0504, scaling_0505, scaling_0523, scaling_0525, scaling_0553, scaling_0554, scaling_0555, scaling_0590, scaling_0591, scaling_0595, scaling_0596, scaling_0599, scaling_0600, scaling_0661, scaling_0672, scaling_0673, scaling_0675, scaling_0677, scaling_0678, scaling_0679, scaling_0680, scaling_0746, scaling_0762, scaling_0763, scaling_0765, scaling_0834, scaling_0852, scaling_0910, scaling_0949, scaling_0980, scaling_0994, scaling_1022, scaling_1031, scaling_1050, scaling_1119, scaling_1144, scaling_1145, scaling_1155, scaling_1165, scaling_1222, scaling_1237, scaling_1244, scaling_1245, scaling_1260, scaling_1261, scaling_1265, scaling_1275, scaling_1350, scaling_1352, scaling_1357, scaling_1370, scaling_1377, scaling_1378, scaling_1379, scaling_1380, scaling_1423, scaling_1427, scaling_1428, scaling_1439, scaling_1440, scaling_1483, scaling_1488, scaling_1495, scaling_1498, scaling_1499, scaling_1542, scaling_1580, scaling_1599, scaling_1603, scaling_1604, scaling_1617, scaling_1622, scaling_1623, scaling_1625, scaling_1639, scaling_1683, scaling_1711, scaling_1712, scaling_1726, scaling_1732, scaling_1733, scaling_1734, scaling_1735

Last 10 lines of scaling_0013:
```
    cluster_labels = clusterer.fit_predict(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 917, in fit_predict
    return self.fit(X).labels_
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 887, in fit
    X = self._check_fit_data(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 858, in _check_fit_data
    X = check_array(X, accept_sparse='csr', dtype=[np.float64, np.float32])
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 470, in check_array
    context))
ValueError: Found array with 0 feature(s) (shape=(16, 0)) while a minimum of 1 is required.
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/forks_method_error_3.png)

 * Number of instances: 131
 * Dataset ids: scaling_0051, scaling_0056, scaling_0061, scaling_0066, scaling_0076, scaling_0077, scaling_0083, scaling_0088, scaling_0089, scaling_0094, scaling_0095, scaling_0101, scaling_0107, scaling_0108, scaling_0115, scaling_0121, scaling_0122, scaling_0127, scaling_0128, scaling_0129, scaling_0135, scaling_0136, scaling_0141, scaling_0145, scaling_0147, scaling_0149, scaling_0153, scaling_0159, scaling_0165, scaling_0171, scaling_0176, scaling_0177, scaling_0180, scaling_0183, scaling_0184, scaling_0197, scaling_0198, scaling_0203, scaling_0204, scaling_0205, scaling_0210, scaling_0211, scaling_0212, scaling_0224, scaling_0229, scaling_0235, scaling_0241, scaling_0246, scaling_0247, scaling_0252, scaling_0253, scaling_0272, scaling_0273, scaling_0282, scaling_0293, scaling_0304, scaling_0313, scaling_0314, scaling_0315, scaling_0324, scaling_0325, scaling_0326, scaling_0347, scaling_0357, scaling_0367, scaling_0376, scaling_0377, scaling_0385, scaling_0386, scaling_0387, scaling_0399, scaling_0425, scaling_0437, scaling_0438, scaling_0449, scaling_0450, scaling_0451, scaling_0491, scaling_0501, scaling_0524, scaling_0597, scaling_0861, scaling_0872, scaling_0883, scaling_0894, scaling_0905, scaling_0954, scaling_0960, scaling_0966, scaling_0971, scaling_0972, scaling_0977, scaling_0978, scaling_1061, scaling_1080, scaling_1099, scaling_1117, scaling_1118, scaling_1135, scaling_1136, scaling_1137, scaling_1175, scaling_1191, scaling_1207, scaling_1223, scaling_1238, scaling_1239, scaling_1288, scaling_1309, scaling_1330, scaling_1351, scaling_1371, scaling_1372, scaling_1388, scaling_1400, scaling_1412, scaling_1424, scaling_1435, scaling_1436, scaling_1504, scaling_1510, scaling_1516, scaling_1522, scaling_1528, scaling_1618, scaling_1640, scaling_1662, scaling_1684, scaling_1706, scaling_1727, scaling_1728

Last 10 lines of scaling_0051:
```
Traceback (most recent call last):
  File "/code/run.py", line 55, in <module>
    pca.fit(data1)
  File "/usr/local/lib/python3.6/site-packages/sklearn/decomposition/pca.py", line 329, in fit
    self._fit(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/decomposition/pca.py", line 370, in _fit
    copy=self.copy)
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 470, in check_array
    context))
ValueError: Found array with 0 feature(s) (shape=(1, 0)) while a minimum of 1 is required.
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/forks_method_error_4.png)

 * Number of instances: 79
 * Dataset ids: scaling_0082, scaling_0113, scaling_0151, scaling_0152, scaling_0157, scaling_0163, scaling_0164, scaling_0169, scaling_0181, scaling_0182, scaling_0188, scaling_0195, scaling_0196, scaling_0202, scaling_0220, scaling_0222, scaling_0232, scaling_0245, scaling_0257, scaling_0265, scaling_0281, scaling_0287, scaling_0303, scaling_0351, scaling_0382, scaling_0383, scaling_0391, scaling_0404, scaling_0417, scaling_0444, scaling_0445, scaling_0446, scaling_0447, scaling_0456, scaling_0461, scaling_0466, scaling_0476, scaling_0481, scaling_0499, scaling_0520, scaling_0556, scaling_0565, scaling_0574, scaling_0601, scaling_0617, scaling_0633, scaling_0681, scaling_0698, scaling_0715, scaling_0766, scaling_0784, scaling_0802, scaling_0856, scaling_0867, scaling_0878, scaling_0953, scaling_0965, scaling_0981, scaling_0995, scaling_1009, scaling_1051, scaling_1070, scaling_1089, scaling_1166, scaling_1182, scaling_1198, scaling_1236, scaling_1276, scaling_1297, scaling_1318, scaling_1441, scaling_1453, scaling_1465, scaling_1531, scaling_1550, scaling_1569, scaling_1626, scaling_1648, scaling_1670

Last 10 lines of scaling_0082:
```
    n_clus,max_sil,sil_scores=find_nclusters(mappedData,range_clusters)
  File "/FORKS/deng_2014_python/forks_fcns.py", line 415, in find_nclusters
    silhouette_avg = silhouette_score(X, cluster_labels)
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/cluster/unsupervised.py", line 101, in silhouette_score
    return np.mean(silhouette_samples(X, labels, metric=metric, **kwds))
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/cluster/unsupervised.py", line 167, in silhouette_samples
    check_number_of_labels(len(le.classes_), X.shape[0])
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/cluster/unsupervised.py", line 19, in check_number_of_labels
    "to n_samples - 1 (inclusive)" % n_labels)
ValueError: Number of labels is 9. Valid values are 2 to n_samples - 1 (inclusive)
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/forks_method_error_5.png)

 * Number of instances: 11
 * Dataset ids: scaling_0290, scaling_0353, scaling_1216, scaling_1272, scaling_1363, scaling_1430, scaling_1479, scaling_1610, scaling_1694, scaling_1695, scaling_1716

Last 10 lines of scaling_0290:
```
    kmeans = KMeans(n_clusters=M, random_state=0).fit(X_reduced)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 887, in fit
    X = self._check_fit_data(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 858, in _check_fit_data
    X = check_array(X, accept_sparse='csr', dtype=[np.float64, np.float32])
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 453, in check_array
    _assert_all_finite(array)
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 44, in _assert_all_finite
    " or a value too large for %r." % X.dtype)
ValueError: Input contains NaN, infinity or a value too large for dtype('float64').
```

### ERROR CLUSTER METHOD_ERROR -- 6
![Cluster plot](error_class_plots/forks_method_error_6.png)

 * Number of instances: 15
 * Dataset ids: scaling_0311, scaling_0429, scaling_0506, scaling_0550, scaling_0576, scaling_0618, scaling_0699, scaling_0772, scaling_0785, scaling_0896, scaling_0935, scaling_1215, scaling_1241, scaling_1368, scaling_1494

Last 10 lines of scaling_0311:
```
    r,cluster_assigned_to_temp=clusterassignment(connected_nodes_to_node,temp_nodes)
  File "/FORKS/deng_2014_python/forks_fcns.py", line 900, in clusterassignment
    nbrs = NearestNeighbors(n_neighbors=1, algorithm='ball_tree').fit(temp1)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 803, in fit
    return self._fit(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 204, in _fit
    X = check_array(X, accept_sparse='csr')
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 462, in check_array
    context))
ValueError: Found array with 0 sample(s) (shape=(0, 6)) while a minimum of 1 is required.
```

### ERROR CLUSTER METHOD_ERROR -- 7
![Cluster plot](error_class_plots/forks_method_error_7.png)

 * Number of instances: 1
 * Dataset ids: scaling_0339

Last 10 lines of scaling_0339:
```
    n_clus,max_sil,sil_scores=find_nclusters(mappedData,range_clusters)
  File "/FORKS/deng_2014_python/forks_fcns.py", line 414, in find_nclusters
    cluster_labels = clusterer.fit_predict(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 917, in fit_predict
    return self.fit(X).labels_
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 887, in fit
    X = self._check_fit_data(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/cluster/k_means_.py", line 861, in _check_fit_data
    X.shape[0], self.n_clusters))
ValueError: n_samples=3 should be >= n_clusters=4
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/forks_time_limit_1.png)

 * Number of instances: 8
 * Dataset ids: scaling_0783, scaling_0819, scaling_0837, scaling_0854, scaling_0855, scaling_0942, scaling_0950, scaling_1049

Last 10 lines of scaling_0783:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/forks/Cat2/r2gridengine/20181008_214905_forks_Cat2_aGI49hiMeS/log/log.103.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/forks_memory_limit_1.png)

 * Number of instances: 38
 * Dataset ids: scaling_0801, scaling_0918, scaling_0926, scaling_0934, scaling_0993, scaling_1007, scaling_1021, scaling_1035, scaling_1067, scaling_1086, scaling_1105, scaling_1124, scaling_1143, scaling_1179, scaling_1195, scaling_1211, scaling_1227, scaling_1243, scaling_1292, scaling_1313, scaling_1334, scaling_1355, scaling_1376, scaling_1449, scaling_1461, scaling_1473, scaling_1485, scaling_1497, scaling_1544, scaling_1563, scaling_1582, scaling_1601, scaling_1620, scaling_1641, scaling_1663, scaling_1685, scaling_1707, scaling_1729

Last 10 lines of scaling_0801:
```
    self._fit_transform(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/manifold/isomap.py", line 124, in _fit_transform
    self.embedding_ = self.kernel_pca_.fit_transform(G)
  File "/usr/local/lib/python3.6/site-packages/sklearn/decomposition/kernel_pca.py", line 262, in fit_transform
    self.fit(X, **params)
  File "/usr/local/lib/python3.6/site-packages/sklearn/decomposition/kernel_pca.py", line 237, in fit
    X = check_array(X, accept_sparse='csr', copy=self.copy_X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 444, in check_array
    array = np.array(array, dtype=dtype, order=order, copy=copy)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/forks_memory_limit_2.png)

 * Number of instances: 35
 * Dataset ids: scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_1068, scaling_1087, scaling_1106, scaling_1125, scaling_1157, scaling_1159, scaling_1161, scaling_1163, scaling_1267, scaling_1269, scaling_1271, scaling_1273, scaling_1390, scaling_1402, scaling_1414, scaling_1426, scaling_1438, scaling_1505, scaling_1511, scaling_1517, scaling_1523, scaling_1529, scaling_1642, scaling_1664, scaling_1686, scaling_1708, scaling_1730

Last 10 lines of scaling_0866:
```
Traceback (most recent call last):
  File "/code/run.py", line 65, in <module>
    n_clus,max_sil,sil_scores=find_nclusters(mappedData,range_clusters)
  File "/FORKS/deng_2014_python/forks_fcns.py", line 415, in find_nclusters
    silhouette_avg = silhouette_score(X, cluster_labels)
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/cluster/unsupervised.py", line 101, in silhouette_score
    return np.mean(silhouette_samples(X, labels, metric=metric, **kwds))
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/cluster/unsupervised.py", line 186, in silhouette_samples
    current_distances = distances[mask]
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 3
![Cluster plot](error_class_plots/forks_memory_limit_3.png)

 * Number of instances: 98
 * Dataset ids: scaling_1008, scaling_1036, scaling_1069, scaling_1088, scaling_1107, scaling_1126, scaling_1147, scaling_1149, scaling_1151, scaling_1153, scaling_1180, scaling_1181, scaling_1196, scaling_1197, scaling_1212, scaling_1213, scaling_1228, scaling_1229, scaling_1249, scaling_1253, scaling_1257, scaling_1293, scaling_1294, scaling_1295, scaling_1296, scaling_1314, scaling_1315, scaling_1316, scaling_1317, scaling_1335, scaling_1336, scaling_1337, scaling_1338, scaling_1356, scaling_1358, scaling_1359, scaling_1391, scaling_1392, scaling_1403, scaling_1404, scaling_1415, scaling_1416, scaling_1450, scaling_1451, scaling_1452, scaling_1462, scaling_1463, scaling_1464, scaling_1474, scaling_1475, scaling_1476, scaling_1486, scaling_1487, scaling_1500, scaling_1506, scaling_1512, scaling_1518, scaling_1524, scaling_1530, scaling_1545, scaling_1546, scaling_1547, scaling_1548, scaling_1549, scaling_1564, scaling_1565, scaling_1566, scaling_1567, scaling_1568, scaling_1583, scaling_1584, scaling_1585, scaling_1586, scaling_1587, scaling_1602, scaling_1605, scaling_1606, scaling_1621, scaling_1624, scaling_1643, scaling_1644, scaling_1645, scaling_1646, scaling_1647, scaling_1665, scaling_1666, scaling_1667, scaling_1668, scaling_1669, scaling_1687, scaling_1688, scaling_1689, scaling_1690, scaling_1691, scaling_1709, scaling_1710, scaling_1713, scaling_1731

Last 10 lines of scaling_1008:
```
    distances = pairwise_distances(X, metric=metric, **kwds)
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/pairwise.py", line 1247, in pairwise_distances
    return _parallel_pairwise(X, Y, func, n_jobs, **kwds)
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/pairwise.py", line 1090, in _parallel_pairwise
    return func(X, Y, **kwds)
  File "/usr/local/lib/python3.6/site-packages/sklearn/metrics/pairwise.py", line 246, in euclidean_distances
    distances = safe_sparse_dot(X, Y.T, dense_output=True)
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/extmath.py", line 140, in safe_sparse_dot
    return np.dot(a, b)
MemoryError
```


