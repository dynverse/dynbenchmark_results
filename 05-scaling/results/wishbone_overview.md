# wishbone
![Overview](wishbone.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/wishbone_method_error_1.png)

 * Number of instances: 17
 * Dataset ids: scaling_0001, scaling_0003, scaling_0004, scaling_0012, scaling_0023, scaling_0026, scaling_0037, scaling_0053, scaling_0058, scaling_0063, scaling_0067, scaling_0072, scaling_0096, scaling_0101, scaling_0102, scaling_0136, scaling_0149

Last 10 lines of scaling_0001:
```
    nbrs = NearestNeighbors(n_neighbors=knn).fit(data)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 803, in fit
    return self._fit(X)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 204, in _fit
    X = check_array(X, accept_sparse='csr')
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 453, in check_array
    _assert_all_finite(array)
  File "/usr/local/lib/python3.6/site-packages/sklearn/utils/validation.py", line 44, in _assert_all_finite
    " or a value too large for %r." % X.dtype)
ValueError: Input contains NaN, infinity or a value too large for dtype('float32').
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/wishbone_method_error_2.png)

 * Number of instances: 224
 * Dataset ids: scaling_0002, scaling_0006, scaling_0007, scaling_0008, scaling_0009, scaling_0010, scaling_0011, scaling_0013, scaling_0015, scaling_0016, scaling_0017, scaling_0019, scaling_0020, scaling_0022, scaling_0025, scaling_0029, scaling_0031, scaling_0033, scaling_0035, scaling_0039, scaling_0041, scaling_0043, scaling_0045, scaling_0047, scaling_0051, scaling_0052, scaling_0056, scaling_0057, scaling_0061, scaling_0062, scaling_0066, scaling_0076, scaling_0077, scaling_0082, scaling_0083, scaling_0088, scaling_0089, scaling_0094, scaling_0095, scaling_0106, scaling_0107, scaling_0113, scaling_0114, scaling_0120, scaling_0121, scaling_0127, scaling_0128, scaling_0135, scaling_0151, scaling_0152, scaling_0157, scaling_0158, scaling_0163, scaling_0164, scaling_0169, scaling_0170, scaling_0176, scaling_0181, scaling_0188, scaling_0195, scaling_0202, scaling_0216, scaling_0218, scaling_0220, scaling_0222, scaling_0224, scaling_0226, scaling_0227, scaling_0232, scaling_0233, scaling_0238, scaling_0239, scaling_0244, scaling_0245, scaling_0251, scaling_0276, scaling_0277, scaling_0287, scaling_0288, scaling_0298, scaling_0299, scaling_0309, scaling_0310, scaling_0321, scaling_0341, scaling_0342, scaling_0351, scaling_0352, scaling_0361, scaling_0362, scaling_0371, scaling_0372, scaling_0382, scaling_0391, scaling_0392, scaling_0404, scaling_0405, scaling_0417, scaling_0418, scaling_0430, scaling_0431, scaling_0444, scaling_0456, scaling_0466, scaling_0476, scaling_0486, scaling_0506, scaling_0510, scaling_0514, scaling_0518, scaling_0522, scaling_0526, scaling_0532, scaling_0538, scaling_0544, scaling_0550, scaling_0556, scaling_0565, scaling_0574, scaling_0583, scaling_0601, scaling_0602, scaling_0617, scaling_0618, scaling_0633, scaling_0634, scaling_0649, scaling_0650, scaling_0666, scaling_0681, scaling_0682, scaling_0698, scaling_0699, scaling_0715, scaling_0716, scaling_0732, scaling_0733, scaling_0750, scaling_0766, scaling_0767, scaling_0784, scaling_0785, scaling_0802, scaling_0803, scaling_0820, scaling_0821, scaling_0839, scaling_0856, scaling_0867, scaling_0878, scaling_0889, scaling_0911, scaling_0919, scaling_0927, scaling_0935, scaling_0943, scaling_0951, scaling_0957, scaling_0963, scaling_0969, scaling_0975, scaling_0981, scaling_0995, scaling_1009, scaling_1023, scaling_1051, scaling_1070, scaling_1089, scaling_1108, scaling_1146, scaling_1148, scaling_1150, scaling_1152, scaling_1154, scaling_1166, scaling_1167, scaling_1182, scaling_1183, scaling_1198, scaling_1199, scaling_1214, scaling_1215, scaling_1231, scaling_1276, scaling_1277, scaling_1297, scaling_1298, scaling_1318, scaling_1319, scaling_1339, scaling_1340, scaling_1361, scaling_1441, scaling_1442, scaling_1453, scaling_1454, scaling_1465, scaling_1466, scaling_1477, scaling_1478, scaling_1490, scaling_1531, scaling_1532, scaling_1550, scaling_1551, scaling_1569, scaling_1570, scaling_1588, scaling_1589, scaling_1608, scaling_1626, scaling_1648, scaling_1670, scaling_1692, scaling_1736, scaling_1740, scaling_1744, scaling_1748, scaling_1752, scaling_1766, scaling_1781, scaling_1796, scaling_1811, scaling_1826

Last 10 lines of scaling_0002:
```
  /group/irc/shared/dynverse/dynbenchmark/derived/singularity_images/dynverse/ti_wishbone.simg
Target dimensionality reduced to 10.
Traceback (most recent call last):
  File "/code/run.py", line 37, in <module>
    scdata.run_diffusion_map(knn=p["knn"], epsilon=p["epsilon"], n_diffusion_components=p["n_diffusion_components"], n_pca_components=p["n_pca_components"], markers=markers)
  File "/usr/local/lib/python3.6/site-packages/wishbone/wb.py", line 601, in run_diffusion_map
    distances, indices = nbrs.kneighbors(data)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 347, in kneighbors
    (train_size, n_neighbors)
ValueError: Expected n_neighbors <= n_samples,  but n_samples = 10, n_neighbors = 25
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/wishbone_method_error_3.png)

 * Number of instances: 123
 * Dataset ids: scaling_0018, scaling_0021, scaling_0024, scaling_0027, scaling_0030, scaling_0032, scaling_0034, scaling_0036, scaling_0038, scaling_0040, scaling_0068, scaling_0073, scaling_0078, scaling_0084, scaling_0090, scaling_0108, scaling_0115, scaling_0122, scaling_0129, scaling_0141, scaling_0143, scaling_0145, scaling_0147, scaling_0182, scaling_0189, scaling_0196, scaling_0203, scaling_0210, scaling_0256, scaling_0260, scaling_0264, scaling_0268, scaling_0272, scaling_0278, scaling_0289, scaling_0300, scaling_0311, scaling_0322, scaling_0331, scaling_0333, scaling_0335, scaling_0337, scaling_0339, scaling_0393, scaling_0406, scaling_0419, scaling_0432, scaling_0445, scaling_0457, scaling_0467, scaling_0477, scaling_0487, scaling_0497, scaling_0557, scaling_0566, scaling_0575, scaling_0584, scaling_0593, scaling_0603, scaling_0619, scaling_0635, scaling_0651, scaling_0667, scaling_0683, scaling_0700, scaling_0717, scaling_0734, scaling_0751, scaling_0768, scaling_0786, scaling_0804, scaling_0822, scaling_0840, scaling_0857, scaling_0868, scaling_0879, scaling_0890, scaling_0901, scaling_0982, scaling_0996, scaling_1010, scaling_1024, scaling_1038, scaling_1052, scaling_1071, scaling_1090, scaling_1109, scaling_1128, scaling_1246, scaling_1250, scaling_1254, scaling_1258, scaling_1262, scaling_1278, scaling_1299, scaling_1320, scaling_1341, scaling_1362, scaling_1381, scaling_1393, scaling_1405, scaling_1417, scaling_1429, scaling_1533, scaling_1552, scaling_1571, scaling_1590, scaling_1609, scaling_1627, scaling_1649, scaling_1671, scaling_1693, scaling_1715, scaling_1841, scaling_1849, scaling_1857, scaling_1865, scaling_1873, scaling_1891, scaling_1913, scaling_1935, scaling_1957, scaling_1979

Last 10 lines of scaling_0018:
```
    wb.run_wishbone(start_cell=start_cell, components_list=list(range(p["n_diffusion_components"])), num_waypoints=int(p["num_waypoints"]), branch=branch, k=p["k"])
  File "/usr/local/lib/python3.6/site-packages/wishbone/wb.py", line 1068, in run_wishbone
    s=s, k=k, l=k, num_waypoints=num_waypoints, branch=branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 27, in wishbone
    lnn = nbrs.kneighbors_graph(data, mode='distance' ) 
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 489, in kneighbors_graph
    X, n_neighbors, return_distance=True)
  File "/usr/local/lib/python3.6/site-packages/sklearn/neighbors/base.py", line 347, in kneighbors
    (train_size, n_neighbors)
ValueError: Expected n_neighbors <= n_samples,  but n_samples = 25, n_neighbors = 26
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/wishbone_method_error_4.png)

 * Number of instances: 7
 * Dataset ids: scaling_0050, scaling_0075, scaling_0585, scaling_0718, scaling_1162, scaling_1363, scaling_1874

Last 10 lines of scaling_0050:
```
Traceback (most recent call last):
  File "/code/run.py", line 45, in <module>
    wb.run_wishbone(start_cell=start_cell, components_list=list(range(p["n_diffusion_components"])), num_waypoints=int(p["num_waypoints"]), branch=branch, k=p["k"])
  File "/usr/local/lib/python3.6/site-packages/wishbone/wb.py", line 1068, in run_wishbone
    s=s, k=k, l=k, num_waypoints=num_waypoints, branch=branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 54, in wishbone
    RNK, bp, diffdists, Y = _splittobranches(traj, traj[0], data, iter_l, dist, paths_l2l)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 346, in _splittobranches
    Y = np.zeros((len(RNK)))
TypeError: object of type 'numpy.float64' has no len()
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/wishbone_method_error_5.png)

 * Number of instances: 135
 * Dataset ids: scaling_0262, scaling_0294, scaling_0441, scaling_0503, scaling_0504, scaling_0521, scaling_0525, scaling_0534, scaling_0568, scaling_0591, scaling_0598, scaling_0599, scaling_0600, scaling_0623, scaling_0662, scaling_0663, scaling_0664, scaling_0680, scaling_0697, scaling_0731, scaling_0746, scaling_0747, scaling_0761, scaling_0763, scaling_0764, scaling_0765, scaling_0783, scaling_0793, scaling_0819, scaling_0835, scaling_0837, scaling_0851, scaling_0852, scaling_0854, scaling_0855, scaling_0866, scaling_0872, scaling_0888, scaling_0898, scaling_0899, scaling_0908, scaling_0909, scaling_0910, scaling_0949, scaling_0950, scaling_0959, scaling_0960, scaling_0974, scaling_0980, scaling_1035, scaling_1036, scaling_1049, scaling_1050, scaling_1069, scaling_1107, scaling_1126, scaling_1143, scaling_1144, scaling_1145, scaling_1147, scaling_1151, scaling_1153, scaling_1155, scaling_1165, scaling_1181, scaling_1190, scaling_1213, scaling_1228, scaling_1229, scaling_1242, scaling_1243, scaling_1244, scaling_1245, scaling_1265, scaling_1296, scaling_1308, scaling_1338, scaling_1357, scaling_1358, scaling_1359, scaling_1377, scaling_1378, scaling_1379, scaling_1380, scaling_1427, scaling_1428, scaling_1439, scaling_1440, scaling_1451, scaling_1452, scaling_1459, scaling_1475, scaling_1476, scaling_1487, scaling_1488, scaling_1498, scaling_1499, scaling_1530, scaling_1548, scaling_1549, scaling_1560, scaling_1586, scaling_1587, scaling_1603, scaling_1604, scaling_1605, scaling_1622, scaling_1623, scaling_1646, scaling_1647, scaling_1691, scaling_1711, scaling_1712, scaling_1732, scaling_1733, scaling_1739, scaling_1747, scaling_1751, scaling_1789, scaling_1824, scaling_1838, scaling_1839, scaling_1871, scaling_1872, scaling_1879, scaling_1925, scaling_1976, scaling_1997, scaling_1998, scaling_2064, scaling_2114, scaling_2119, scaling_2172, scaling_2224, scaling_2248

Last 10 lines of scaling_0262:
```
    wb.run_wishbone(start_cell=start_cell, components_list=list(range(p["n_diffusion_components"])), num_waypoints=int(p["num_waypoints"]), branch=branch, k=p["k"])
  File "/usr/local/lib/python3.6/site-packages/wishbone/wb.py", line 1068, in run_wishbone
    s=s, k=k, l=k, num_waypoints=num_waypoints, branch=branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 50, in wishbone
    traj, dist, iter_l, paths_l2l = _trajectory_landmarks( klnn, data, [s], num_waypoints, partial_order, verbose, metric, flock_waypoints, band_sample, branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 263, in _trajectory_landmarks
    paths_l2l.append( [paths[li] for li in l] )
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 263, in <listcomp>
    paths_l2l.append( [paths[li] for li in l] )
KeyError: 117
```

### ERROR CLUSTER METHOD_ERROR -- 6
![Cluster plot](error_class_plots/wishbone_method_error_6.png)

 * Number of instances: 4
 * Dataset ids: scaling_0495, scaling_0549, scaling_0555, scaling_0762

Last 10 lines of scaling_0495:
```
  File "/code/run.py", line 45, in <module>
    wb.run_wishbone(start_cell=start_cell, components_list=list(range(p["n_diffusion_components"])), num_waypoints=int(p["num_waypoints"]), branch=branch, k=p["k"])
  File "/usr/local/lib/python3.6/site-packages/wishbone/wb.py", line 1068, in run_wishbone
    s=s, k=k, l=k, num_waypoints=num_waypoints, branch=branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 50, in wishbone
    traj, dist, iter_l, paths_l2l = _trajectory_landmarks( klnn, data, [s], num_waypoints, partial_order, verbose, metric, flock_waypoints, band_sample, branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 232, in _trajectory_landmarks
    tailband_sample = np.random.choice( tailband, size=tailk, replace=False)
  File "mtrand.pyx", line 1126, in mtrand.RandomState.choice
ValueError: a must be non-empty
```

### ERROR CLUSTER METHOD_ERROR -- 7
![Cluster plot](error_class_plots/wishbone_method_error_7.png)

 * Number of instances: 16
 * Dataset ids: scaling_1342, scaling_1418, scaling_1591, scaling_1694, scaling_1812, scaling_1850, scaling_1866, scaling_1914, scaling_1958, scaling_1959, scaling_2009, scaling_2025, scaling_2086, scaling_2134, scaling_2194, scaling_2289

Last 10 lines of scaling_1342:
```
  return ufunc.reduce(obj, axis, dtype, out, **passkwargs)
output saved in /data/tmp//RtmpfHpHip/file116e96d62870d/ti/output: 
	cell_ids.csv
	dimred.csv
	milestone_network.csv
	progressions.csv
	pseudotime.csv
	timings.json
all(pg_check >= 0 & pg_check < (1 + 1e-06)) isn't true.
Sum of progressions per cell_id should be exactly one
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/wishbone_time_limit_1.png)

 * Number of instances: 223
 * Dataset ids: scaling_0994, scaling_1008, scaling_1022, scaling_1088, scaling_1149, scaling_1157, scaling_1161, scaling_1180, scaling_1196, scaling_1197, scaling_1212, scaling_1249, scaling_1253, scaling_1257, scaling_1261, scaling_1293, scaling_1294, scaling_1295, scaling_1314, scaling_1315, scaling_1316, scaling_1317, scaling_1335, scaling_1336, scaling_1337, scaling_1356, scaling_1391, scaling_1392, scaling_1403, scaling_1404, scaling_1415, scaling_1416, scaling_1450, scaling_1462, scaling_1463, scaling_1464, scaling_1474, scaling_1486, scaling_1500, scaling_1506, scaling_1512, scaling_1518, scaling_1523, scaling_1524, scaling_1529, scaling_1545, scaling_1546, scaling_1547, scaling_1564, scaling_1565, scaling_1566, scaling_1583, scaling_1584, scaling_1585, scaling_1602, scaling_1606, scaling_1621, scaling_1624, scaling_1625, scaling_1642, scaling_1643, scaling_1644, scaling_1645, scaling_1665, scaling_1666, scaling_1667, scaling_1686, scaling_1687, scaling_1688, scaling_1689, scaling_1708, scaling_1709, scaling_1710, scaling_1713, scaling_1730, scaling_1731, scaling_1734, scaling_1735, scaling_1738, scaling_1742, scaling_1746, scaling_1750, scaling_1754, scaling_1755, scaling_1763, scaling_1765, scaling_1777, scaling_1778, scaling_1792, scaling_1793, scaling_1807, scaling_1808, scaling_1822, scaling_1823, scaling_1825, scaling_1837, scaling_1840, scaling_1846, scaling_1847, scaling_1854, scaling_1862, scaling_1863, scaling_1870, scaling_1878, scaling_1880, scaling_1884, scaling_1906, scaling_1907, scaling_1908, scaling_1909, scaling_1910, scaling_1912, scaling_1928, scaling_1929, scaling_1930, scaling_1931, scaling_1933, scaling_1934, scaling_1950, scaling_1951, scaling_1952, scaling_1953, scaling_1954, scaling_1956, scaling_1972, scaling_1973, scaling_1974, scaling_1977, scaling_1978, scaling_1994, scaling_1995, scaling_1996, scaling_1999, scaling_2000, scaling_2007, scaling_2008, scaling_2014, scaling_2015, scaling_2016, scaling_2023, scaling_2024, scaling_2031, scaling_2032, scaling_2039, scaling_2040, scaling_2051, scaling_2052, scaling_2053, scaling_2054, scaling_2066, scaling_2067, scaling_2068, scaling_2070, scaling_2081, scaling_2082, scaling_2083, scaling_2084, scaling_2096, scaling_2097, scaling_2098, scaling_2099, scaling_2100, scaling_2111, scaling_2112, scaling_2113, scaling_2115, scaling_2120, scaling_2121, scaling_2126, scaling_2127, scaling_2132, scaling_2133, scaling_2138, scaling_2139, scaling_2143, scaling_2144, scaling_2145, scaling_2157, scaling_2158, scaling_2159, scaling_2161, scaling_2173, scaling_2174, scaling_2175, scaling_2177, scaling_2189, scaling_2190, scaling_2191, scaling_2193, scaling_2205, scaling_2206, scaling_2207, scaling_2209, scaling_2221, scaling_2222, scaling_2225, scaling_2240, scaling_2241, scaling_2242, scaling_2243, scaling_2244, scaling_2246, scaling_2261, scaling_2262, scaling_2263, scaling_2264, scaling_2267, scaling_2282, scaling_2283, scaling_2284, scaling_2285, scaling_2286, scaling_2288, scaling_2303, scaling_2304, scaling_2305, scaling_2308, scaling_2309, scaling_2324, scaling_2325, scaling_2326, scaling_2329, scaling_2330

Last 10 lines of scaling_0994:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/wishbone/Cat2/r2gridengine/20181008_214927_wishbone_Cat2_lqBoxj3sco/log/log.314.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/wishbone_memory_limit_1.png)

 * Number of instances: 36
 * Dataset ids: scaling_1567, scaling_1568, scaling_1668, scaling_1669, scaling_1690, scaling_1743, scaling_1779, scaling_1780, scaling_1794, scaling_1795, scaling_1809, scaling_1810, scaling_1848, scaling_1855, scaling_1856, scaling_1864, scaling_1911, scaling_1932, scaling_1955, scaling_1975, scaling_2055, scaling_2069, scaling_2085, scaling_2160, scaling_2176, scaling_2192, scaling_2208, scaling_2223, scaling_2245, scaling_2265, scaling_2266, scaling_2287, scaling_2306, scaling_2307, scaling_2327, scaling_2328

Last 10 lines of scaling_1567:
```
    traj, dist, iter_l, paths_l2l = _trajectory_landmarks( klnn, data, [s], num_waypoints, partial_order, verbose, metric, flock_waypoints, band_sample, branch)
  File "/usr/local/lib/python3.6/site-packages/wishbone/core.py", line 260, in _trajectory_landmarks
    temp = nx.single_source_dijkstra(graph, l[i])
  File "/usr/local/lib/python3.6/site-packages/networkx/algorithms/shortest_paths/weighted.py", line 452, in single_source_dijkstra
    weight=weight)
  File "/usr/local/lib/python3.6/site-packages/networkx/algorithms/shortest_paths/weighted.py", line 706, in multi_source_dijkstra
    cutoff=cutoff, target=target)
  File "/usr/local/lib/python3.6/site-packages/networkx/algorithms/shortest_paths/weighted.py", line 810, in _dijkstra_multisource
    paths[u] = paths[v] + [u]
MemoryError
```


