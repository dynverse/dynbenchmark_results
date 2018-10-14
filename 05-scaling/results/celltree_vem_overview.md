# celltree_vem
![Overview](celltree_vem.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/celltree_vem_method_error_1.png)

 * Number of instances: 11
 * Dataset ids: scaling_0001, scaling_0002, scaling_0003, scaling_0075, scaling_0466, scaling_0486, scaling_0556, scaling_1182, scaling_1276, scaling_1297, scaling_1531

Last 10 lines of scaling_0001:
```
Using root vertex: 1
Adding branch #1:
[1] 10  4  6  2  7  9  8  5
Using branch width: 1.12 (width.scale.factor: 1.5)
Outliers: 0
Total number of branches: 1 (forks: 0)
Error in apply(dists[backbone, -backbone], 2, which.min) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> apply
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/celltree_vem_method_error_2.png)

 * Number of instances: 52
 * Dataset ids: scaling_0105, scaling_0140, scaling_0180, scaling_0215, scaling_0225, scaling_0254, scaling_0255, scaling_0329, scaling_0330, scaling_0389, scaling_0390, scaling_0453, scaling_0454, scaling_0455, scaling_0504, scaling_0505, scaling_0525, scaling_0555, scaling_0599, scaling_0600, scaling_0678, scaling_0679, scaling_0680, scaling_0763, scaling_0764, scaling_0765, scaling_0853, scaling_0854, scaling_0855, scaling_0909, scaling_0910, scaling_0950, scaling_0980, scaling_1049, scaling_1050, scaling_1144, scaling_1145, scaling_1155, scaling_1244, scaling_1245, scaling_1265, scaling_1378, scaling_1379, scaling_1380, scaling_1440, scaling_1499, scaling_1500, scaling_1623, scaling_1624, scaling_1625, scaling_1734, scaling_1735

Last 10 lines of scaling_0105:
```
    filter, lag
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Loading required namespace: cellTree
Computing LDA model using: VEM
Filtering out rows with standard deviation < 0.5 (10 -> 1)...
Loading required namespace: topicmodels
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/celltree_vem_method_error_3.png)

 * Number of instances: 11
 * Dataset ids: scaling_0133, scaling_0174, scaling_0208, scaling_0340, scaling_0388, scaling_0495, scaling_0503, scaling_0591, scaling_0677, scaling_0747, scaling_0949

Last 10 lines of scaling_0133:
```
Model fit for k = 4 topics
Using rooting method: longest.path
Using root vertex: 1
Outliers: 158
Total number of branches: 0 (forks: -1)
Error in apply(dists[backbone, -backbone], 2, which.min) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> apply
In addition: There were 50 or more warnings (use warnings() to see the first 50)
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/celltree_vem_method_error_4.png)

 * Number of instances: 83
 * Dataset ids: scaling_0249, scaling_0308, scaling_0318, scaling_0319, scaling_0328, scaling_0370, scaling_0380, scaling_0403, scaling_0429, scaling_0440, scaling_0441, scaling_0442, scaling_0451, scaling_0452, scaling_0465, scaling_0485, scaling_0494, scaling_0509, scaling_0517, scaling_0521, scaling_0543, scaling_0549, scaling_0553, scaling_0564, scaling_0573, scaling_0582, scaling_0590, scaling_0598, scaling_0614, scaling_0615, scaling_0616, scaling_0632, scaling_0647, scaling_0648, scaling_0661, scaling_0662, scaling_0663, scaling_0664, scaling_0674, scaling_0675, scaling_0676, scaling_0696, scaling_0730, scaling_0745, scaling_0746, scaling_0758, scaling_0759, scaling_0760, scaling_0761, scaling_0762, scaling_0781, scaling_0817, scaling_0834, scaling_0835, scaling_0848, scaling_0849, scaling_0850, scaling_0851, scaling_0852, scaling_0864, scaling_0896, scaling_0897, scaling_0907, scaling_0908, scaling_0941, scaling_0947, scaling_0948, scaling_0973, scaling_0979, scaling_1045, scaling_1046, scaling_1047, scaling_1138, scaling_1139, scaling_1140, scaling_1141, scaling_1240, scaling_1241, scaling_1264, scaling_1373, scaling_1374, scaling_1437, scaling_1528

Last 10 lines of scaling_0249:
```
[96] 383 282 209
Using branch width: 1.37 (width.scale.factor: 1.5)
Outliers: 0
Total number of branches: 1 (forks: 0)
Backbone fork merge (width: 1.37): 99 ->  99 
Ranking all cells...
output saved in /data/tmp//Rtmp0p6xpr/file1169565095a98/ti/output: 
	output.rds
sort(unique(c(cell_graph$from, cell_graph$to))) not equal to sort(names(to_keep)).
Lengths differ: 630 is not 631
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/celltree_vem_method_error_5.png)

 * Number of instances: 35
 * Dataset ids: scaling_1181, scaling_1197, scaling_1213, scaling_1229, scaling_1295, scaling_1296, scaling_1316, scaling_1317, scaling_1337, scaling_1358, scaling_1359, scaling_1392, scaling_1404, scaling_1416, scaling_1428, scaling_1451, scaling_1464, scaling_1475, scaling_1487, scaling_1488, scaling_1546, scaling_1547, scaling_1584, scaling_1585, scaling_1603, scaling_1604, scaling_1605, scaling_1606, scaling_1622, scaling_1644, scaling_1689, scaling_1710, scaling_1711, scaling_1732, scaling_1733

Last 10 lines of scaling_1181:
```
new alpha = 0.61956
**** em iteration 30 ****
document 158489
new alpha = 0.73187
final e step document 158489
Model fit for k = 4 topics
Error in options(expressions = length(cell.names) * 5) : 
  'expressions' parameter invalid, allowed 25...500000
Calls: <Anonymous> -> options
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 6
![Cluster plot](error_class_plots/celltree_vem_method_error_6.png)

 * Number of instances: 2
 * Dataset ids: scaling_1588, scaling_1608

Last 10 lines of scaling_1588:
```
Model fit for k = 4 topics
Using rooting method: longest.path
Using root vertex: 1
Outliers: 10
Total number of branches: 0 (forks: -1)
Error in apply(dists[backbone, -backbone], 2, which.min) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> apply
In addition: There were 11 warnings (use warnings() to see them)
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/celltree_vem_time_limit_1.png)

 * Number of instances: 168
 * Dataset ids: scaling_0783, scaling_0801, scaling_0819, scaling_0837, scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0993, scaling_0994, scaling_1007, scaling_1008, scaling_1021, scaling_1022, scaling_1035, scaling_1036, scaling_1067, scaling_1068, scaling_1069, scaling_1086, scaling_1087, scaling_1088, scaling_1105, scaling_1106, scaling_1107, scaling_1124, scaling_1125, scaling_1126, scaling_1143, scaling_1147, scaling_1149, scaling_1151, scaling_1153, scaling_1157, scaling_1159, scaling_1161, scaling_1163, scaling_1165, scaling_1179, scaling_1180, scaling_1195, scaling_1196, scaling_1211, scaling_1212, scaling_1227, scaling_1228, scaling_1243, scaling_1249, scaling_1253, scaling_1257, scaling_1261, scaling_1267, scaling_1269, scaling_1271, scaling_1273, scaling_1275, scaling_1292, scaling_1293, scaling_1294, scaling_1312, scaling_1313, scaling_1314, scaling_1315, scaling_1334, scaling_1335, scaling_1336, scaling_1338, scaling_1355, scaling_1356, scaling_1357, scaling_1376, scaling_1377, scaling_1390, scaling_1391, scaling_1402, scaling_1403, scaling_1414, scaling_1415, scaling_1426, scaling_1427, scaling_1438, scaling_1439, scaling_1449, scaling_1450, scaling_1452, scaling_1460, scaling_1461, scaling_1462, scaling_1463, scaling_1473, scaling_1474, scaling_1476, scaling_1485, scaling_1486, scaling_1497, scaling_1498, scaling_1505, scaling_1506, scaling_1510, scaling_1511, scaling_1512, scaling_1517, scaling_1518, scaling_1523, scaling_1524, scaling_1529, scaling_1530, scaling_1544, scaling_1545, scaling_1548, scaling_1549, scaling_1559, scaling_1560, scaling_1561, scaling_1563, scaling_1564, scaling_1565, scaling_1566, scaling_1567, scaling_1568, scaling_1581, scaling_1582, scaling_1583, scaling_1586, scaling_1587, scaling_1601, scaling_1602, scaling_1620, scaling_1621, scaling_1640, scaling_1641, scaling_1642, scaling_1643, scaling_1645, scaling_1646, scaling_1647, scaling_1662, scaling_1663, scaling_1664, scaling_1665, scaling_1666, scaling_1667, scaling_1668, scaling_1669, scaling_1683, scaling_1684, scaling_1685, scaling_1686, scaling_1687, scaling_1688, scaling_1690, scaling_1691, scaling_1707, scaling_1708, scaling_1709, scaling_1712, scaling_1713, scaling_1729, scaling_1730, scaling_1731

Last 10 lines of scaling_0783:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/celltree_vem/Cat2/r2gridengine/20181008_215039_celltree_vem_Cat2_92GINtjF3q/log/log.103.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/celltree_vem_memory_limit_1.png)

 * Number of instances: 41
 * Dataset ids: scaling_0697, scaling_0714, scaling_0731, scaling_0748, scaling_0782, scaling_0800, scaling_0818, scaling_0836, scaling_0865, scaling_0876, scaling_0887, scaling_0898, scaling_0992, scaling_1006, scaling_1020, scaling_1034, scaling_1048, scaling_1066, scaling_1085, scaling_1104, scaling_1123, scaling_1142, scaling_1178, scaling_1194, scaling_1210, scaling_1226, scaling_1242, scaling_1291, scaling_1333, scaling_1354, scaling_1375, scaling_1448, scaling_1472, scaling_1484, scaling_1496, scaling_1543, scaling_1562, scaling_1600, scaling_1619, scaling_1706, scaling_1728

Last 10 lines of scaling_0697:
```
**** em iteration 70 ****
document 15849
new alpha = 2.06094
final e step document 15849
Model fit for k = 4 topics
Using rooting method: longest.path
Error in minimum.spanning.tree(g) : 
  At heap.c:565 : d_indheap reserve failed, Out of memory
Calls: <Anonymous> -> minimum.spanning.tree
Execution halted
```


