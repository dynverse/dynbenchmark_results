# scorpius
![Overview](scorpius.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/scorpius_method_error_1.png)

 * Number of instances: 10
 * Dataset ids: scaling_0015, scaling_0050, scaling_0075, scaling_0225, scaling_0254, scaling_0389, scaling_0505, scaling_0764, scaling_0855, scaling_1245

Last 10 lines of scaling_0015:
```
    filter, lag
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  smoothing parameter value too small
Calls: <Anonymous> -> <Anonymous> -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/scorpius_method_error_2.png)

 * Number of instances: 27
 * Dataset ids: scaling_0030, scaling_0040, scaling_0105, scaling_0139, scaling_0140, scaling_0179, scaling_0180, scaling_0215, scaling_0255, scaling_0330, scaling_0390, scaling_0454, scaling_0455, scaling_0525, scaling_0600, scaling_0679, scaling_0680, scaling_0765, scaling_0910, scaling_0980, scaling_1050, scaling_1145, scaling_1244, scaling_1379, scaling_1380, scaling_1500, scaling_1735

Last 10 lines of scaling_0030:
```
    filter, lag
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  'tol' must be strictly positive and finite
Calls: <Anonymous> -> <Anonymous> -> smoother_function -> <Anonymous>
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/scorpius_time_limit_1.png)

 * Number of instances: 64
 * Dataset ids: scaling_1088, scaling_1181, scaling_1197, scaling_1213, scaling_1229, scaling_1295, scaling_1296, scaling_1316, scaling_1317, scaling_1337, scaling_1338, scaling_1358, scaling_1359, scaling_1404, scaling_1416, scaling_1428, scaling_1440, scaling_1451, scaling_1452, scaling_1463, scaling_1464, scaling_1475, scaling_1476, scaling_1487, scaling_1488, scaling_1499, scaling_1546, scaling_1547, scaling_1548, scaling_1549, scaling_1565, scaling_1566, scaling_1567, scaling_1568, scaling_1584, scaling_1585, scaling_1586, scaling_1587, scaling_1603, scaling_1604, scaling_1605, scaling_1606, scaling_1623, scaling_1624, scaling_1625, scaling_1644, scaling_1645, scaling_1646, scaling_1647, scaling_1666, scaling_1667, scaling_1668, scaling_1669, scaling_1688, scaling_1689, scaling_1690, scaling_1691, scaling_1710, scaling_1711, scaling_1712, scaling_1713, scaling_1732, scaling_1733, scaling_1734

Last 10 lines of scaling_1088:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/scorpius/Cat2/r2gridengine/20181008_214854_scorpius_Cat2_P4mlq7IUrz/log/log.408.e.txt
```


