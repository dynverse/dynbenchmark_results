# monocle_ica
![Overview](monocle_ica.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/monocle_ica_method_error_1.png)

 * Number of instances: 27
 * Dataset ids: scaling_0007, scaling_0010, scaling_0041, scaling_0061, scaling_0121, scaling_0135, scaling_0150, scaling_0176, scaling_0224, scaling_0272, scaling_0326, scaling_0450, scaling_0455, scaling_0501, scaling_0505, scaling_0553, scaling_0680, scaling_0759, scaling_0760, scaling_0848, scaling_0849, scaling_0910, scaling_0947, scaling_0948, scaling_1045, scaling_1145, scaling_1380

Last 10 lines of scaling_0007:
```
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
Error in parametricDispersionFit(disp_table[row.names(disp_table) %in%  : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/monocle_ica_method_error_2.png)

 * Number of instances: 118
 * Dataset ids: scaling_0011, scaling_0045, scaling_0050, scaling_0051, scaling_0072, scaling_0101, scaling_0102, scaling_0103, scaling_0104, scaling_0105, scaling_0136, scaling_0139, scaling_0178, scaling_0213, scaling_0214, scaling_0225, scaling_0251, scaling_0255, scaling_0274, scaling_0321, scaling_0327, scaling_0330, scaling_0339, scaling_0371, scaling_0387, scaling_0388, scaling_0390, scaling_0444, scaling_0445, scaling_0452, scaling_0453, scaling_0498, scaling_0502, scaling_0503, scaling_0504, scaling_0522, scaling_0550, scaling_0554, scaling_0594, scaling_0598, scaling_0668, scaling_0676, scaling_0677, scaling_0751, scaling_0752, scaling_0762, scaling_0763, scaling_0764, scaling_0820, scaling_0840, scaling_0841, scaling_0851, scaling_0853, scaling_0889, scaling_0901, scaling_0907, scaling_0908, scaling_0909, scaling_0949, scaling_0979, scaling_1023, scaling_1038, scaling_1047, scaling_1048, scaling_1049, scaling_1108, scaling_1128, scaling_1129, scaling_1141, scaling_1142, scaling_1143, scaling_1144, scaling_1164, scaling_1165, scaling_1214, scaling_1242, scaling_1262, scaling_1265, scaling_1275, scaling_1339, scaling_1362, scaling_1363, scaling_1376, scaling_1378, scaling_1429, scaling_1430, scaling_1438, scaling_1440, scaling_1477, scaling_1498, scaling_1500, scaling_1530, scaling_1588, scaling_1609, scaling_1610, scaling_1621, scaling_1622, scaling_1624, scaling_1625, scaling_1692, scaling_1713, scaling_1715, scaling_1716, scaling_1731, scaling_1732, scaling_1838, scaling_1839, scaling_1873, scaling_1874, scaling_1879, scaling_1979, scaling_1980, scaling_1998, scaling_2000, scaling_2033, scaling_2113, scaling_2114, scaling_2225

Last 10 lines of scaling_0011:
```
Loading required package: ggplot2
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Error in parametricDispersionFit(disp_table, verbose) : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/monocle_ica_method_error_3.png)

 * Number of instances: 9
 * Dataset ids: scaling_0013, scaling_0015, scaling_0027, scaling_0029, scaling_0038, scaling_0039, scaling_0047, scaling_0070, scaling_0074

Last 10 lines of scaling_0013:
```
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Error in if (coefs[2] < 0) { : missing value where TRUE/FALSE needed
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning message:
In dgamma(y, 1/disp, scale = mu * disp, log = TRUE) : NaNs produced
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/monocle_ica_method_error_4.png)

 * Number of instances: 13
 * Dataset ids: scaling_0022, scaling_0075, scaling_0275, scaling_0322, scaling_0382, scaling_0600, scaling_0667, scaling_0850, scaling_1243, scaling_1499, scaling_1623, scaling_1733, scaling_1997

Last 10 lines of scaling_0022:
```
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
Error in parametricDispersionFit(disp_table[row.names(disp_table) %in%  : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning message:
glm.fit: algorithm did not converge 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/monocle_ica_method_error_5.png)

 * Number of instances: 5
 * Dataset ids: scaling_0026, scaling_0037, scaling_0067, scaling_0068, scaling_0096

Last 10 lines of scaling_0026:
```
Loading required package: DDRTree
Loading required package: irlba
Error in glm.fit(x = numeric(0), y = numeric(0), weights = NULL, start = c(1e-06,  : 
  object 'fit' not found
Calls: <Anonymous> ... parametricDispersionFit -> glm -> eval -> eval -> glm.fit
In addition: Warning messages:
1: In glm.fit(x = numeric(0), y = numeric(0), weights = NULL, start = c(1e-06,  :
  no observations informative at iteration 1
2: glm.fit: algorithm did not converge 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 6
![Cluster plot](error_class_plots/monocle_ica_method_error_6.png)

 * Number of instances: 38
 * Dataset ids: scaling_0030, scaling_0132, scaling_0133, scaling_0138, scaling_0140, scaling_0174, scaling_0179, scaling_0201, scaling_0208, scaling_0223, scaling_0243, scaling_0248, scaling_0271, scaling_0308, scaling_0318, scaling_0338, scaling_0349, scaling_0350, scaling_0369, scaling_0370, scaling_0379, scaling_0402, scaling_0403, scaling_0428, scaling_0494, scaling_0509, scaling_0531, scaling_0543, scaling_0589, scaling_0615, scaling_0647, scaling_0675, scaling_0744, scaling_0745, scaling_0834, scaling_0941, scaling_1046, scaling_1140

Last 10 lines of scaling_0030:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
[1] 3
Error in vector("list", gamma(n + 1)) : 
  vector size specified is too large
Calls: <Anonymous> ... extract_good_ordering -> order_p_node -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 7
![Cluster plot](error_class_plots/monocle_ica_method_error_7.png)

 * Number of instances: 1
 * Dataset ids: scaling_0040

Last 10 lines of scaling_0040:
```
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
Error in parametricDispersionFit(disp_table[row.names(disp_table) %in%  : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning message:
In dgamma(y, 1/disp, scale = mu * disp, log = TRUE) : NaNs produced
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 8
![Cluster plot](error_class_plots/monocle_ica_method_error_8.png)

 * Number of instances: 2
 * Dataset ids: scaling_0069, scaling_0761

Last 10 lines of scaling_0069:
```
Loading required package: irlba
Error in parametricDispersionFit(disp_table, verbose) : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
4: step size truncated due to divergence 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 9
![Cluster plot](error_class_plots/monocle_ica_method_error_9.png)

 * Number of instances: 24
 * Dataset ids: scaling_0099, scaling_0173, scaling_0187, scaling_0285, scaling_0286, scaling_0317, scaling_0328, scaling_0329, scaling_0340, scaling_0377, scaling_0429, scaling_0438, scaling_0440, scaling_0465, scaling_0495, scaling_0555, scaling_0591, scaling_0596, scaling_0648, scaling_0661, scaling_0664, scaling_0747, scaling_0833, scaling_0852

Last 10 lines of scaling_0099:
```
Loading required package: irlba
Removing 1 outliers
[1] 5
 *** caught segfault ***
address 0xa1, cause 'memory not mapped'
Traceback:
 1: get.all.shortest.paths(mst, from = V(mst)[root_node])
 2: monocle:::pq_helper(dp_mst, use_weights = FALSE, root_node = root_cell)
 3: num_q_nodes(cds)
An irrecoverable exception occurred. R is aborting now ...
```

### ERROR CLUSTER METHOD_ERROR -- 10
![Cluster plot](error_class_plots/monocle_ica_method_error_10.png)

 * Number of instances: 3
 * Dataset ids: scaling_0111, scaling_0125, scaling_1245

Last 10 lines of scaling_0111:
```
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
Error in parametricDispersionFit(disp_table[row.names(disp_table) %in%  : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: glm.fit: algorithm did not converge 
2: glm.fit: algorithm did not converge 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 11
![Cluster plot](error_class_plots/monocle_ica_method_error_11.png)

 * Number of instances: 23
 * Dataset ids: scaling_0180, scaling_0215, scaling_0249, scaling_0254, scaling_0319, scaling_0380, scaling_0389, scaling_0441, scaling_0442, scaling_0454, scaling_0485, scaling_0521, scaling_0525, scaling_0549, scaling_0564, scaling_0582, scaling_0590, scaling_0599, scaling_0662, scaling_0663, scaling_0678, scaling_0679, scaling_0746

Last 10 lines of scaling_0180:
```
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
[1] 4
Error in vector("list", gamma(n + 1)) : vector size cannot be infinite
Calls: <Anonymous> ... extract_good_ordering -> order_p_node -> <Anonymous>
In addition: Warning message:
In combinat::permn(q_level_list, fun = order_q_node, dist_matrix) :
  value out of range in 'gammafn'
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 12
![Cluster plot](error_class_plots/monocle_ica_method_error_12.png)

 * Number of instances: 1
 * Dataset ids: scaling_0451

Last 10 lines of scaling_0451:
```
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
4: step size truncated due to divergence 
5: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
6: step size truncated due to divergence 
7: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
8: step size truncated due to divergence 
9: glm.fit: algorithm did not converge 
10: glm.fit: algorithm stopped at boundary value 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 13
![Cluster plot](error_class_plots/monocle_ica_method_error_13.png)

 * Number of instances: 105
 * Dataset ids: scaling_0475, scaling_0537, scaling_0573, scaling_0614, scaling_0630, scaling_0631, scaling_0646, scaling_0694, scaling_0695, scaling_0711, scaling_0728, scaling_0729, scaling_0779, scaling_0780, scaling_0797, scaling_0798, scaling_0815, scaling_0816, scaling_0863, scaling_0874, scaling_0885, scaling_0917, scaling_0925, scaling_0933, scaling_0990, scaling_0991, scaling_1004, scaling_1005, scaling_1018, scaling_1019, scaling_1032, scaling_1063, scaling_1064, scaling_1082, scaling_1083, scaling_1101, scaling_1102, scaling_1121, scaling_1176, scaling_1192, scaling_1208, scaling_1224, scaling_1248, scaling_1252, scaling_1256, scaling_1260, scaling_1288, scaling_1289, scaling_1309, scaling_1310, scaling_1330, scaling_1331, scaling_1352, scaling_1387, scaling_1388, scaling_1399, scaling_1400, scaling_1411, scaling_1412, scaling_1424, scaling_1541, scaling_1542, scaling_1560, scaling_1561, scaling_1579, scaling_1580, scaling_1599, scaling_1637, scaling_1638, scaling_1659, scaling_1660, scaling_1681, scaling_1682, scaling_1704, scaling_1773, scaling_1788, scaling_1803, scaling_1845, scaling_1853, scaling_1861, scaling_1869, scaling_1901, scaling_1902, scaling_1923, scaling_1924, scaling_1945, scaling_1946, scaling_1968, scaling_2004, scaling_2012, scaling_2020, scaling_2048, scaling_2063, scaling_2078, scaling_2093, scaling_2108, scaling_2152, scaling_2153, scaling_2168, scaling_2169, scaling_2184, scaling_2185, scaling_2201, scaling_2234, scaling_2235

Last 10 lines of scaling_0475:
```
Loading required package: ggplot2
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
[1] 10
Error: node stack overflow
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 14
![Cluster plot](error_class_plots/monocle_ica_method_error_14.png)

 * Number of instances: 7
 * Dataset ids: scaling_0666, scaling_0750, scaling_0839, scaling_0943, scaling_0975, scaling_1154, scaling_1361

Last 10 lines of scaling_0666:
```
Loading required package: DDRTree
Loading required package: irlba
Error in parametricDispersionFit(disp_table, verbose) : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 15
![Cluster plot](error_class_plots/monocle_ica_method_error_15.png)

 * Number of instances: 46
 * Dataset ids: scaling_0697, scaling_0714, scaling_0731, scaling_0748, scaling_0782, scaling_0800, scaling_0818, scaling_0836, scaling_0865, scaling_0876, scaling_0887, scaling_0898, scaling_0992, scaling_1020, scaling_1034, scaling_1066, scaling_1085, scaling_1104, scaling_1123, scaling_1178, scaling_1194, scaling_1210, scaling_1226, scaling_1291, scaling_1312, scaling_1333, scaling_1354, scaling_1375, scaling_1448, scaling_1460, scaling_1472, scaling_1484, scaling_1543, scaling_1562, scaling_1581, scaling_1600, scaling_1619, scaling_1640, scaling_1662, scaling_1684, scaling_1706, scaling_1728, scaling_1790, scaling_1805, scaling_1820, scaling_1835

Last 10 lines of scaling_0697:
```
Loading required package: ggplot2
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
[1] 10
Error: memory exhausted (limit reached?)
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 16
![Cluster plot](error_class_plots/monocle_ica_method_error_16.png)

 * Number of instances: 1
 * Dataset ids: scaling_0712

Last 10 lines of scaling_0712:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
Warning message:
glm.fit: algorithm did not converge 
[1] 25
Error: node stack overflow
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 17
![Cluster plot](error_class_plots/monocle_ica_method_error_17.png)

 * Number of instances: 12
 * Dataset ids: scaling_0896, scaling_1120, scaling_1351, scaling_1423, scaling_1436, scaling_1598, scaling_1618, scaling_1726, scaling_1877, scaling_1967, scaling_1990, scaling_2217

Last 10 lines of scaling_0896:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 4 outliers
[1] 51
Error: node stack overflow
In addition: Warning message:
In length(vattrs[[name]]) <- vc : length of NULL cannot be changed
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 18
![Cluster plot](error_class_plots/monocle_ica_method_error_18.png)

 * Number of instances: 1
 * Dataset ids: scaling_0966

Last 10 lines of scaling_0966:
```
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 20 outliers
[1] 517
Error in as.igraph.vs(e1, toadd) : Invalid vertex names
Calls: <Anonymous> ... +.igraph -> add_edges -> as.igraph.vs -> as.igraph.vs
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 19
![Cluster plot](error_class_plots/monocle_ica_method_error_19.png)

 * Number of instances: 2
 * Dataset ids: scaling_1006, scaling_1496

Last 10 lines of scaling_1006:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
Warning message:
glm.fit: algorithm did not converge 
[1] 40
Error: memory exhausted (limit reached?)
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 20
![Cluster plot](error_class_plots/monocle_ica_method_error_20.png)

 * Number of instances: 2
 * Dataset ids: scaling_1231, scaling_1490

Last 10 lines of scaling_1231:
```
Loading required package: irlba
Error in parametricDispersionFit(disp_table, verbose) : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
4: glm.fit: algorithm did not converge 
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 21
![Cluster plot](error_class_plots/monocle_ica_method_error_21.png)

 * Number of instances: 3
 * Dataset ids: scaling_1608, scaling_1752, scaling_1826

Last 10 lines of scaling_1608:
```
Loading required package: irlba
Error in parametricDispersionFit(disp_table, verbose) : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
4: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 22
![Cluster plot](error_class_plots/monocle_ica_method_error_22.png)

 * Number of instances: 1
 * Dataset ids: scaling_1735

Last 10 lines of scaling_1735:
```
Loading required package: irlba
Removing 1 outliers
Error in parametricDispersionFit(disp_table[row.names(disp_table) %in%  : 
  Parametric dispersion fit failed. Try a local fit and/or a pooled estimation. (See '?estimateDispersions')
Calls: <Anonymous> ... estimateDispersionsForCellDataSet -> parametricDispersionFit
In addition: Warning messages:
1: glm.fit: algorithm did not converge 
2: glm.fit: algorithm did not converge 
3: glm.fit: algorithm did not converge 
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/monocle_ica_time_limit_1.png)

 * Number of instances: 14
 * Dataset ids: scaling_0073, scaling_0131, scaling_0137, scaling_0148, scaling_0156, scaling_0168, scaling_0177, scaling_0253, scaling_0386, scaling_0517, scaling_0674, scaling_1033, scaling_1775, scaling_1927

Last 10 lines of scaling_0073:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/monocle_ica/Cat1/r2gridengine/20181008_142037_monocle_ica_Cat1_iNyRAAn2Hj/log/log.73.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/monocle_ica_memory_limit_1.png)

 * Number of instances: 684
 * Dataset ids: scaling_0048, scaling_0098, scaling_0207, scaling_0231, scaling_0307, scaling_0493, scaling_0616, scaling_0632, scaling_0660, scaling_0696, scaling_0713, scaling_0730, scaling_0781, scaling_0783, scaling_0799, scaling_0801, scaling_0817, scaling_0819, scaling_0835, scaling_0837, scaling_0855, scaling_0864, scaling_0866, scaling_0877, scaling_0888, scaling_0897, scaling_0899, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_0981, scaling_0993, scaling_0994, scaling_0995, scaling_1007, scaling_1008, scaling_1009, scaling_1021, scaling_1022, scaling_1035, scaling_1036, scaling_1050, scaling_1051, scaling_1065, scaling_1067, scaling_1068, scaling_1069, scaling_1070, scaling_1086, scaling_1087, scaling_1088, scaling_1089, scaling_1103, scaling_1105, scaling_1106, scaling_1107, scaling_1122, scaling_1124, scaling_1125, scaling_1126, scaling_1146, scaling_1147, scaling_1148, scaling_1149, scaling_1150, scaling_1151, scaling_1152, scaling_1153, scaling_1155, scaling_1157, scaling_1159, scaling_1161, scaling_1163, scaling_1166, scaling_1167, scaling_1177, scaling_1179, scaling_1180, scaling_1181, scaling_1182, scaling_1193, scaling_1195, scaling_1196, scaling_1197, scaling_1198, scaling_1199, scaling_1211, scaling_1212, scaling_1213, scaling_1215, scaling_1227, scaling_1228, scaling_1229, scaling_1241, scaling_1244, scaling_1246, scaling_1249, scaling_1250, scaling_1253, scaling_1254, scaling_1257, scaling_1258, scaling_1261, scaling_1264, scaling_1267, scaling_1269, scaling_1271, scaling_1273, scaling_1276, scaling_1277, scaling_1278, scaling_1279, scaling_1292, scaling_1293, scaling_1294, scaling_1295, scaling_1296, scaling_1297, scaling_1299, scaling_1300, scaling_1311, scaling_1313, scaling_1314, scaling_1315, scaling_1316, scaling_1317, scaling_1318, scaling_1319, scaling_1320, scaling_1321, scaling_1332, scaling_1334, scaling_1335, scaling_1336, scaling_1337, scaling_1338, scaling_1340, scaling_1341, scaling_1342, scaling_1355, scaling_1356, scaling_1357, scaling_1358, scaling_1359, scaling_1374, scaling_1379, scaling_1381, scaling_1382, scaling_1390, scaling_1391, scaling_1392, scaling_1393, scaling_1394, scaling_1401, scaling_1402, scaling_1403, scaling_1404, scaling_1405, scaling_1406, scaling_1413, scaling_1414, scaling_1415, scaling_1416, scaling_1417, scaling_1418, scaling_1425, scaling_1426, scaling_1427, scaling_1428, scaling_1439, scaling_1441, scaling_1442, scaling_1443, scaling_1449, scaling_1450, scaling_1451, scaling_1452, scaling_1453, scaling_1455, scaling_1461, scaling_1463, scaling_1464, scaling_1465, scaling_1466, scaling_1467, scaling_1473, scaling_1474, scaling_1475, scaling_1476, scaling_1478, scaling_1479, scaling_1485, scaling_1486, scaling_1487, scaling_1488, scaling_1491, scaling_1497, scaling_1501, scaling_1504, scaling_1505, scaling_1506, scaling_1507, scaling_1510, scaling_1511, scaling_1512, scaling_1513, scaling_1516, scaling_1517, scaling_1518, scaling_1519, scaling_1522, scaling_1523, scaling_1524, scaling_1525, scaling_1528, scaling_1529, scaling_1531, scaling_1532, scaling_1533, scaling_1534, scaling_1535, scaling_1544, scaling_1545, scaling_1546, scaling_1547, scaling_1548, scaling_1549, scaling_1550, scaling_1552, scaling_1553, scaling_1554, scaling_1563, scaling_1564, scaling_1565, scaling_1566, scaling_1567, scaling_1568, scaling_1569, scaling_1570, scaling_1571, scaling_1572, scaling_1573, scaling_1582, scaling_1583, scaling_1584, scaling_1585, scaling_1586, scaling_1587, scaling_1589, scaling_1590, scaling_1591, scaling_1592, scaling_1601, scaling_1602, scaling_1603, scaling_1604, scaling_1605, scaling_1606, scaling_1611, scaling_1620, scaling_1626, scaling_1627, scaling_1628, scaling_1629, scaling_1630, scaling_1641, scaling_1642, scaling_1643, scaling_1644, scaling_1645, scaling_1646, scaling_1647, scaling_1648, scaling_1649, scaling_1650, scaling_1651, scaling_1652, scaling_1663, scaling_1664, scaling_1665, scaling_1666, scaling_1667, scaling_1668, scaling_1669, scaling_1670, scaling_1671, scaling_1672, scaling_1673, scaling_1674, scaling_1683, scaling_1685, scaling_1686, scaling_1687, scaling_1688, scaling_1689, scaling_1690, scaling_1691, scaling_1693, scaling_1694, scaling_1695, scaling_1696, scaling_1707, scaling_1708, scaling_1709, scaling_1710, scaling_1711, scaling_1712, scaling_1717, scaling_1718, scaling_1727, scaling_1729, scaling_1730, scaling_1734, scaling_1736, scaling_1737, scaling_1738, scaling_1739, scaling_1741, scaling_1742, scaling_1743, scaling_1744, scaling_1745, scaling_1746, scaling_1747, scaling_1748, scaling_1749, scaling_1750, scaling_1751, scaling_1753, scaling_1754, scaling_1755, scaling_1757, scaling_1759, scaling_1761, scaling_1763, scaling_1765, scaling_1766, scaling_1767, scaling_1768, scaling_1769, scaling_1776, scaling_1777, scaling_1778, scaling_1779, scaling_1780, scaling_1781, scaling_1782, scaling_1783, scaling_1784, scaling_1791, scaling_1792, scaling_1793, scaling_1794, scaling_1795, scaling_1796, scaling_1797, scaling_1798, scaling_1799, scaling_1806, scaling_1807, scaling_1808, scaling_1809, scaling_1810, scaling_1811, scaling_1812, scaling_1813, scaling_1814, scaling_1821, scaling_1822, scaling_1823, scaling_1824, scaling_1825, scaling_1827, scaling_1828, scaling_1829, scaling_1836, scaling_1837, scaling_1840, scaling_1841, scaling_1842, scaling_1843, scaling_1846, scaling_1847, scaling_1848, scaling_1849, scaling_1850, scaling_1851, scaling_1854, scaling_1855, scaling_1856, scaling_1857, scaling_1858, scaling_1859, scaling_1862, scaling_1863, scaling_1864, scaling_1865, scaling_1866, scaling_1867, scaling_1870, scaling_1871, scaling_1872, scaling_1875, scaling_1878, scaling_1880, scaling_1882, scaling_1884, scaling_1886, scaling_1888, scaling_1890, scaling_1891, scaling_1892, scaling_1893, scaling_1894, scaling_1895, scaling_1896, scaling_1897, scaling_1903, scaling_1904, scaling_1905, scaling_1906, scaling_1907, scaling_1908, scaling_1909, scaling_1910, scaling_1911, scaling_1912, scaling_1913, scaling_1914, scaling_1915, scaling_1916, scaling_1917, scaling_1918, scaling_1919, scaling_1926, scaling_1928, scaling_1929, scaling_1930, scaling_1931, scaling_1932, scaling_1933, scaling_1934, scaling_1935, scaling_1936, scaling_1937, scaling_1938, scaling_1939, scaling_1940, scaling_1941, scaling_1947, scaling_1948, scaling_1949, scaling_1950, scaling_1951, scaling_1952, scaling_1953, scaling_1954, scaling_1955, scaling_1956, scaling_1957, scaling_1958, scaling_1959, scaling_1960, scaling_1961, scaling_1962, scaling_1963, scaling_1970, scaling_1971, scaling_1972, scaling_1973, scaling_1974, scaling_1975, scaling_1976, scaling_1977, scaling_1978, scaling_1981, scaling_1982, scaling_1983, scaling_1984, scaling_1985, scaling_1992, scaling_1993, scaling_1994, scaling_1995, scaling_1996, scaling_1999, scaling_2001, scaling_2002, scaling_2006, scaling_2007, scaling_2008, scaling_2009, scaling_2010, scaling_2014, scaling_2015, scaling_2016, scaling_2017, scaling_2018, scaling_2021, scaling_2022, scaling_2023, scaling_2024, scaling_2025, scaling_2026, scaling_2030, scaling_2031, scaling_2032, scaling_2034, scaling_2038, scaling_2039, scaling_2040, scaling_2041, scaling_2042, scaling_2043, scaling_2044, scaling_2045, scaling_2049, scaling_2050, scaling_2051, scaling_2052, scaling_2053, scaling_2054, scaling_2055, scaling_2056, scaling_2057, scaling_2058, scaling_2059, scaling_2060, scaling_2064, scaling_2065, scaling_2066, scaling_2067, scaling_2068, scaling_2069, scaling_2070, scaling_2071, scaling_2072, scaling_2073, scaling_2074, scaling_2075, scaling_2079, scaling_2080, scaling_2081, scaling_2082, scaling_2083, scaling_2084, scaling_2085, scaling_2086, scaling_2087, scaling_2088, scaling_2089, scaling_2090, scaling_2094, scaling_2095, scaling_2096, scaling_2097, scaling_2098, scaling_2099, scaling_2100, scaling_2101, scaling_2102, scaling_2103, scaling_2104, scaling_2105, scaling_2109, scaling_2110, scaling_2111, scaling_2115, scaling_2116, scaling_2117, scaling_2118, scaling_2119, scaling_2120, scaling_2121, scaling_2122, scaling_2123, scaling_2124, scaling_2125, scaling_2126, scaling_2127, scaling_2128, scaling_2129, scaling_2130, scaling_2131, scaling_2132, scaling_2133, scaling_2134, scaling_2135, scaling_2136, scaling_2137, scaling_2138, scaling_2139, scaling_2140, scaling_2141, scaling_2142, scaling_2143, scaling_2144, scaling_2145, scaling_2146, scaling_2147, scaling_2148, scaling_2149, scaling_2150, scaling_2156, scaling_2157, scaling_2158, scaling_2159, scaling_2160, scaling_2161, scaling_2162, scaling_2163, scaling_2164, scaling_2165, scaling_2166, scaling_2172, scaling_2173, scaling_2174, scaling_2175, scaling_2176, scaling_2177, scaling_2178, scaling_2179, scaling_2180, scaling_2181, scaling_2182, scaling_2188, scaling_2189, scaling_2190, scaling_2191, scaling_2192, scaling_2193, scaling_2194, scaling_2195, scaling_2196, scaling_2197, scaling_2198, scaling_2204, scaling_2205, scaling_2206, scaling_2207, scaling_2208, scaling_2209, scaling_2210, scaling_2211, scaling_2212, scaling_2213, scaling_2214, scaling_2220, scaling_2221, scaling_2222, scaling_2223, scaling_2224, scaling_2226, scaling_2227, scaling_2228, scaling_2229, scaling_2230, scaling_2231, scaling_2232, scaling_2233, scaling_2238, scaling_2239, scaling_2240, scaling_2241, scaling_2242, scaling_2243, scaling_2244, scaling_2245, scaling_2246, scaling_2247, scaling_2248, scaling_2249, scaling_2250, scaling_2251, scaling_2252, scaling_2253, scaling_2254

Last 10 lines of scaling_0048:
```
Loading required package: ggplot2
Loading required package: VGAM
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
[1] 6
Error: cannot allocate vector of size 155886.9 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/monocle_ica_memory_limit_2.png)

 * Number of instances: 7
 * Dataset ids: scaling_0765, scaling_1774, scaling_1789, scaling_1804, scaling_1819, scaling_1834, scaling_2037

Last 10 lines of scaling_0765:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
[1] 4
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At type_indexededgelist.c:309 : cannot add edges, Out of memory
Calls: num_q_nodes -> <Anonymous> -> graph.adjacency.dense
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 3
![Cluster plot](error_class_plots/monocle_ica_memory_limit_3.png)

 * Number of instances: 2
 * Dataset ids: scaling_0854, scaling_2236

Last 10 lines of scaling_0854:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
[1] 8
Error in minimum.spanning.tree(gp) : 
  At heap.c:570 : d_indheap reserve failed, Out of memory
Calls: <Anonymous> -> minimum.spanning.tree
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 4
![Cluster plot](error_class_plots/monocle_ica_memory_limit_4.png)

 * Number of instances: 6
 * Dataset ids: scaling_0875, scaling_1084, scaling_1209, scaling_1639, scaling_1705, scaling_2005

Last 10 lines of scaling_0875:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 3 outliers
[1] 40
Error in add_edges(e1, as.igraph.vs(e1, toadd), attr = attr) : 
  At vector.pmt:1069 : cannot init vector from array, Out of memory
Calls: num_q_nodes -> <Anonymous> -> +.igraph -> add_edges
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 5
![Cluster plot](error_class_plots/monocle_ica_memory_limit_5.png)

 * Number of instances: 7
 * Dataset ids: scaling_0886, scaling_1290, scaling_1353, scaling_1389, scaling_1661, scaling_1969, scaling_2013

Last 10 lines of scaling_0886:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 2 outliers
[1] 39
Error in add_vertices(e1, la, attr = e2) : 
  At vector.pmt:1069 : cannot init vector from array, Out of memory
Calls: num_q_nodes -> <Anonymous> -> +.igraph -> add_vertices
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 6
![Cluster plot](error_class_plots/monocle_ica_memory_limit_6.png)

 * Number of instances: 10
 * Dataset ids: scaling_0955, scaling_0961, scaling_0967, scaling_0973, scaling_1437, scaling_2154, scaling_2170, scaling_2186, scaling_2202, scaling_2218

Last 10 lines of scaling_0955:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 3 outliers
[1] 62
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At vector.pmt:442 : cannot reserve space for vector, Out of memory
Calls: num_q_nodes -> <Anonymous> -> graph.adjacency.dense
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 7
![Cluster plot](error_class_plots/monocle_ica_memory_limit_7.png)

 * Number of instances: 3
 * Dataset ids: scaling_1183, scaling_1551, scaling_1740

Last 10 lines of scaling_1183:
```
Loading required package: DDRTree
Loading required package: irlba
Removing 3903 outliers
Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
3: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
[1] 96841
Error: cannot allocate vector of size 74.5 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 8
![Cluster plot](error_class_plots/monocle_ica_memory_limit_8.png)

 * Number of instances: 3
 * Dataset ids: scaling_1225, scaling_1925, scaling_2029

Last 10 lines of scaling_1225:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 5 outliers
[1] 89
Error in add_edges(e1, as.igraph.vs(e1, toadd), attr = attr) : 
  At type_indexededgelist.c:309 : cannot add edges, Out of memory
Calls: num_q_nodes -> <Anonymous> -> +.igraph -> add_edges
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 9
![Cluster plot](error_class_plots/monocle_ica_memory_limit_9.png)

 * Number of instances: 2
 * Dataset ids: scaling_1298, scaling_1454

Last 10 lines of scaling_1298:
```
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 6185 outliers
Warning messages:
1: In log(ifelse(y == 0, 1, y/mu)) : NaNs produced
2: step size truncated due to divergence 
[1] 153551
Error: cannot allocate vector of size 187.1 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 10
![Cluster plot](error_class_plots/monocle_ica_memory_limit_10.png)

 * Number of instances: 3
 * Dataset ids: scaling_1377, scaling_1462, scaling_2112

Last 10 lines of scaling_1377:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 1 outliers
Warning message:
glm.fit: algorithm did not converge 
[1] 32
Error: cannot allocate vector of size 29.7 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 11
![Cluster plot](error_class_plots/monocle_ica_memory_limit_11.png)

 * Number of instances: 1
 * Dataset ids: scaling_1991

Last 10 lines of scaling_1991:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 31 outliers
[1] 460
Error in igraph::minimum.spanning.tree(gp) : 
  At heap.c:565 : d_indheap reserve failed, Out of memory
Calls: num_q_nodes -> <Anonymous>
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 12
![Cluster plot](error_class_plots/monocle_ica_memory_limit_12.png)

 * Number of instances: 5
 * Dataset ids: scaling_2155, scaling_2171, scaling_2187, scaling_2203, scaling_2219

Last 10 lines of scaling_2155:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 92 outliers
[1] 3438
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At type_indexededgelist.c:309 : cannot add edges, Out of memory
Calls: <Anonymous> -> graph.adjacency -> graph.adjacency.dense
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 13
![Cluster plot](error_class_plots/monocle_ica_memory_limit_13.png)

 * Number of instances: 1
 * Dataset ids: scaling_2237

Last 10 lines of scaling_2237:
```
Loading required package: stats4
Loading required package: splines
Loading required package: DDRTree
Loading required package: irlba
Removing 154 outliers
[1] 5381
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At vector.pmt:442 : cannot reserve space for vector, Out of memory
Calls: <Anonymous> -> graph.adjacency -> graph.adjacency.dense
Execution halted
```


