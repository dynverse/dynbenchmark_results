# stemnet
![Overview](stemnet.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/stemnet_method_error_1.png)

 * Number of instances: 26
 * Dataset ids: scaling_0075, scaling_0103, scaling_0137, scaling_0212, scaling_0324, scaling_0388, scaling_0436, scaling_0446, scaling_0519, scaling_0594, scaling_0738, scaling_0841, scaling_1027, scaling_1134, scaling_1164, scaling_1218, scaling_1235, scaling_1274, scaling_1525, scaling_1613, scaling_1764, scaling_1874, scaling_1981, scaling_1985, scaling_2033, scaling_2102

Last 10 lines of scaling_0075:
```
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
4: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
5: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
6: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
7: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/stemnet_method_error_2.png)

 * Number of instances: 3
 * Dataset ids: scaling_0252, scaling_0976, scaling_1491

Last 10 lines of scaling_0252:
```
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> glmnet -> lognet
In addition: There were 11 warnings (use warnings() to see them)
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/stemnet_time_limit_1.png)

 * Number of instances: 190
 * Dataset ids: scaling_1296, scaling_1317, scaling_1338, scaling_1359, scaling_1380, scaling_1451, scaling_1452, scaling_1463, scaling_1464, scaling_1475, scaling_1476, scaling_1487, scaling_1488, scaling_1499, scaling_1500, scaling_1547, scaling_1548, scaling_1549, scaling_1566, scaling_1567, scaling_1568, scaling_1585, scaling_1586, scaling_1587, scaling_1604, scaling_1605, scaling_1606, scaling_1622, scaling_1623, scaling_1624, scaling_1625, scaling_1645, scaling_1646, scaling_1647, scaling_1666, scaling_1667, scaling_1668, scaling_1669, scaling_1689, scaling_1690, scaling_1691, scaling_1711, scaling_1712, scaling_1713, scaling_1727, scaling_1728, scaling_1729, scaling_1730, scaling_1731, scaling_1732, scaling_1733, scaling_1734, scaling_1739, scaling_1743, scaling_1747, scaling_1751, scaling_1754, scaling_1755, scaling_1765, scaling_1778, scaling_1779, scaling_1780, scaling_1794, scaling_1795, scaling_1809, scaling_1810, scaling_1824, scaling_1825, scaling_1834, scaling_1835, scaling_1836, scaling_1837, scaling_1838, scaling_1839, scaling_1840, scaling_1847, scaling_1848, scaling_1855, scaling_1856, scaling_1863, scaling_1864, scaling_1871, scaling_1872, scaling_1878, scaling_1879, scaling_1880, scaling_1890, scaling_1908, scaling_1909, scaling_1910, scaling_1911, scaling_1912, scaling_1931, scaling_1932, scaling_1933, scaling_1934, scaling_1952, scaling_1953, scaling_1954, scaling_1955, scaling_1956, scaling_1974, scaling_1975, scaling_1976, scaling_1977, scaling_1978, scaling_1991, scaling_1992, scaling_1993, scaling_1994, scaling_1995, scaling_1996, scaling_1997, scaling_1998, scaling_1999, scaling_2000, scaling_2008, scaling_2016, scaling_2023, scaling_2024, scaling_2032, scaling_2037, scaling_2038, scaling_2039, scaling_2040, scaling_2052, scaling_2053, scaling_2054, scaling_2055, scaling_2067, scaling_2068, scaling_2069, scaling_2070, scaling_2082, scaling_2083, scaling_2084, scaling_2085, scaling_2097, scaling_2098, scaling_2099, scaling_2100, scaling_2101, scaling_2109, scaling_2110, scaling_2111, scaling_2112, scaling_2113, scaling_2114, scaling_2115, scaling_2119, scaling_2120, scaling_2121, scaling_2127, scaling_2131, scaling_2133, scaling_2139, scaling_2143, scaling_2144, scaling_2145, scaling_2157, scaling_2158, scaling_2159, scaling_2160, scaling_2161, scaling_2174, scaling_2175, scaling_2176, scaling_2177, scaling_2190, scaling_2191, scaling_2192, scaling_2193, scaling_2206, scaling_2207, scaling_2208, scaling_2209, scaling_2219, scaling_2220, scaling_2221, scaling_2222, scaling_2223, scaling_2224, scaling_2225, scaling_2240, scaling_2241, scaling_2242, scaling_2243, scaling_2244, scaling_2245, scaling_2246

Last 10 lines of scaling_1296:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/stemnet/Cat3/r2gridengine/20181010_160954_stemnet_Cat3_egVAwA9898/log/log.151.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/stemnet_memory_limit_1.png)

 * Number of instances: 1
 * Dataset ids: scaling_1735

Last 10 lines of scaling_1735:
```
Attaching package: ‘dplyr’
The following objects are masked from ‘package:stats’:
    filter, lag
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Error: cannot allocate vector of size 3.6 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/stemnet_memory_limit_2.png)

 * Number of instances: 1
 * Dataset ids: scaling_2140

Last 10 lines of scaling_2140:
```
The following objects are masked from ‘package:base’:
    intersect, setdiff, setequal, union
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Error: cannot allocate vector of size 5.2 Gb
In addition: Warning message:
In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 3
![Cluster plot](error_class_plots/stemnet_memory_limit_3.png)

 * Number of instances: 1
 * Dataset ids: scaling_2210

Last 10 lines of scaling_2210:
```
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
2: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
3: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
4: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
5: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

## ERROR STATUS MISSING_PRIOR

### ERROR CLUSTER MISSING_PRIOR -- 1
![Cluster plot](error_class_plots/stemnet_missing_prior_1.png)

 * Number of instances: 133
 * Dataset ids: scaling_0001, scaling_0002, scaling_0003, scaling_0004, scaling_0006, scaling_0008, scaling_0012, scaling_0015, scaling_0016, scaling_0020, scaling_0021, scaling_0022, scaling_0025, scaling_0029, scaling_0033, scaling_0034, scaling_0039, scaling_0041, scaling_0047, scaling_0051, scaling_0058, scaling_0061, scaling_0066, scaling_0072, scaling_0083, scaling_0084, scaling_0088, scaling_0094, scaling_0101, scaling_0114, scaling_0115, scaling_0127, scaling_0135, scaling_0151, scaling_0163, scaling_0169, scaling_0176, scaling_0181, scaling_0188, scaling_0189, scaling_0195, scaling_0202, scaling_0224, scaling_0226, scaling_0233, scaling_0244, scaling_0251, scaling_0260, scaling_0287, scaling_0288, scaling_0309, scaling_0321, scaling_0341, scaling_0351, scaling_0352, scaling_0382, scaling_0391, scaling_0405, scaling_0430, scaling_0444, scaling_0456, scaling_0466, scaling_0467, scaling_0486, scaling_0522, scaling_0532, scaling_0550, scaling_0556, scaling_0565, scaling_0574, scaling_0583, scaling_0601, scaling_0617, scaling_0618, scaling_0619, scaling_0633, scaling_0649, scaling_0666, scaling_0681, scaling_0698, scaling_0699, scaling_0700, scaling_0715, scaling_0732, scaling_0750, scaling_0784, scaling_0785, scaling_0786, scaling_0802, scaling_0820, scaling_0839, scaling_0868, scaling_0889, scaling_0943, scaling_0957, scaling_0975, scaling_0981, scaling_0995, scaling_0996, scaling_1009, scaling_1023, scaling_1070, scaling_1089, scaling_1108, scaling_1148, scaling_1154, scaling_1182, scaling_1198, scaling_1214, scaling_1231, scaling_1250, scaling_1297, scaling_1298, scaling_1318, scaling_1339, scaling_1361, scaling_1393, scaling_1453, scaling_1454, scaling_1465, scaling_1477, scaling_1490, scaling_1550, scaling_1552, scaling_1588, scaling_1608, scaling_1626, scaling_1648, scaling_1670, scaling_1692, scaling_1752, scaling_1826, scaling_1913

Last 10 lines of scaling_0001:
```
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
Warning message:
STEMNET requires at least two end cell populations, but according to the prior information there are only 1 end populations!
Forced to invent some end populations in order to at least generate a trajectory 
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> lognet
Execution halted
```

### ERROR CLUSTER MISSING_PRIOR -- 2
![Cluster plot](error_class_plots/stemnet_missing_prior_2.png)

 * Number of instances: 39
 * Dataset ids: scaling_0009, scaling_0010, scaling_0019, scaling_0043, scaling_0045, scaling_0056, scaling_0057, scaling_0076, scaling_0082, scaling_0106, scaling_0113, scaling_0120, scaling_0157, scaling_0158, scaling_0218, scaling_0232, scaling_0238, scaling_0276, scaling_0298, scaling_0361, scaling_0404, scaling_0417, scaling_0476, scaling_0510, scaling_0766, scaling_0856, scaling_0867, scaling_0878, scaling_0919, scaling_1051, scaling_1166, scaling_1183, scaling_1276, scaling_1441, scaling_1531, scaling_1551, scaling_1569, scaling_1740, scaling_1781

Last 10 lines of scaling_0009:
```
    flatten
Warning message:
STEMNET requires at least two end cell populations, but according to the prior information there are only 1 end populations!
Forced to invent some end populations in order to at least generate a trajectory 
At an optimal value of lambda, the misclassification rate for mature populations is 0%.
There were 13 warnings (use warnings() to see them)
Error in apply(object@posteriors[is.na(object@populations), ], 2, mean) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> <Anonymous> -> apply
Execution halted
```

### ERROR CLUSTER MISSING_PRIOR -- 3
![Cluster plot](error_class_plots/stemnet_missing_prior_3.png)

 * Number of instances: 29
 * Dataset ids: scaling_0044, scaling_0059, scaling_0085, scaling_0086, scaling_0116, scaling_0159, scaling_0190, scaling_0261, scaling_0353, scaling_0355, scaling_0371, scaling_0408, scaling_0409, scaling_0567, scaling_0620, scaling_0701, scaling_0787, scaling_0869, scaling_0998, scaling_1158, scaling_1300, scaling_1507, scaling_1553, scaling_1650, scaling_1914, scaling_2009, scaling_2057, scaling_2122, scaling_2247

Last 10 lines of scaling_0044:
```
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
3: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
4: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
5: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
6: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

### ERROR CLUSTER MISSING_PRIOR -- 4
![Cluster plot](error_class_plots/stemnet_missing_prior_4.png)

 * Number of instances: 9
 * Dataset ids: scaling_0143, scaling_0289, scaling_0333, scaling_0406, scaling_0566, scaling_1071, scaling_1299, scaling_1649, scaling_1849

Last 10 lines of scaling_0143:
```
Warning message:
STEMNET requires at least two end cell populations, but according to the prior information there are only 1 end populations!
Forced to invent some end populations in order to at least generate a trajectory 
At an optimal value of lambda, the misclassification rate for mature populations is 0%.
Warning message:
Option grouped=FALSE enforced in cv.glmnet, since < 3 observations per fold 
Error in apply(object@posteriors[is.na(object@populations), ], 2, mean) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> <Anonymous> -> apply
Execution halted
```

### ERROR CLUSTER MISSING_PRIOR -- 5
![Cluster plot](error_class_plots/stemnet_missing_prior_5.png)

 * Number of instances: 1
 * Dataset ids: scaling_0622

Last 10 lines of scaling_0622:
```
The following object is masked from ‘package:jsonlite’:
    flatten
Warning message:
STEMNET requires at least two end cell populations, but according to the prior information there are only 1 end populations!
Forced to invent some end populations in order to at least generate a trajectory 
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> glmnet -> lognet
In addition: There were 11 warnings (use warnings() to see them)
Execution halted
```


