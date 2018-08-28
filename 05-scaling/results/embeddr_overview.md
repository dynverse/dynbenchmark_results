# embeddr
![Overview](embeddr.svg)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/embeddr_method_error_1.png)

 * Number of instances: 72
 * Dataset ids: scaling_0001, scaling_0002, scaling_0006, scaling_0008, scaling_0012, scaling_0016, scaling_0019, scaling_0040, scaling_0041, scaling_0043, scaling_0045, scaling_0047, scaling_0051, scaling_0061, scaling_0066, scaling_0075, scaling_0076, scaling_0082, scaling_0094, scaling_0106, scaling_0120, scaling_0127, scaling_0139, scaling_0151, scaling_0163, scaling_0169, scaling_0181, scaling_0188, scaling_0195, scaling_0202, scaling_0226, scaling_0232, scaling_0238, scaling_0244, scaling_0276, scaling_0287, scaling_0298, scaling_0309, scaling_0341, scaling_0351, scaling_0361, scaling_0371, scaling_0390, scaling_0391, scaling_0404, scaling_0417, scaling_0429, scaling_0430, scaling_0456, scaling_0466, scaling_0476, scaling_0486, scaling_0556, scaling_0565, scaling_0574, scaling_0583, scaling_0601, scaling_0617, scaling_0633, scaling_0681, scaling_0698, scaling_0715, scaling_0732, scaling_0766, scaling_0784, scaling_0802, scaling_0820, scaling_0867, scaling_0878, scaling_0889, scaling_0995, scaling_1009

Last 10 lines of scaling_0001:
```
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  smoothing parameter value too small
Calls: <Anonymous> ... principal_curve -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/embeddr_method_error_2.png)

 * Number of instances: 16
 * Dataset ids: scaling_0003, scaling_0056, scaling_0105, scaling_0113, scaling_0140, scaling_0157, scaling_0168, scaling_0180, scaling_0215, scaling_0255, scaling_0329, scaling_0330, scaling_0455, scaling_0649, scaling_0856, scaling_0981

Last 10 lines of scaling_0003:
```
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  'tol' must be strictly positive and finite
Calls: <Anonymous> ... principal_curve -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/embeddr_method_error_3.png)

 * Number of instances: 8
 * Dataset ids: scaling_0485, scaling_0505, scaling_0555, scaling_0600, scaling_0616, scaling_0680, scaling_0696, scaling_0747

Last 10 lines of scaling_0485:
```
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Warning message:
In laplacian_eigenmap(W, measure_type = measure_type, p = p) :
  More than one non-zero eigenvalue - disjoint clusters.
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  smoothing parameter value too small
Calls: <Anonymous> ... principal_curve -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/embeddr_method_error_4.png)

 * Number of instances: 14
 * Dataset ids: scaling_0656, scaling_0738, scaling_0739, scaling_0741, scaling_0828, scaling_0829, scaling_0893, scaling_0894, scaling_0937, scaling_0939, scaling_0972, scaling_1026, scaling_1028, scaling_1029

Last 10 lines of scaling_0656:
```
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Warning message:
In laplacian_eigenmap(W, measure_type = measure_type, p = p) :
  More than one non-zero eigenvalue - disjoint clusters.
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  need at least four unique 'x' values
Calls: <Anonymous> ... principal_curve -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/embeddr_method_error_5.png)

 * Number of instances: 15
 * Dataset ids: scaling_0697, scaling_0714, scaling_0731, scaling_0748, scaling_0765, scaling_0782, scaling_0800, scaling_0818, scaling_0836, scaling_0854, scaling_0865, scaling_0876, scaling_0887, scaling_0898, scaling_0909

Last 10 lines of scaling_0697:
```
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Error in order(r, decreasing = TRUE) : 
  Failed to realloc working memory 15848*8bytes (xsub in dradix), radix=7
Calls: <Anonymous> -> weighted_graph -> apply -> FUN -> order
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/embeddr_time_limit_1.png)

 * Number of instances: 4
 * Dataset ids: scaling_0648, scaling_0664, scaling_0730, scaling_0886

Last 10 lines of scaling_0648:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/embeddr/10/r2gridengine/20180825_051009_embeddr_10_DIdYFYns8g/log/log.648.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/embeddr_memory_limit_1.png)

 * Number of instances: 30
 * Dataset ids: scaling_0783, scaling_0801, scaling_0819, scaling_0837, scaling_0855, scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0910, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_0993, scaling_0994, scaling_1007, scaling_1008, scaling_1021, scaling_1022, scaling_1035, scaling_1036, scaling_1049, scaling_1050

Last 10 lines of scaling_0783:
```
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Error: cannot allocate vector of size 4.7 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/embeddr_memory_limit_2.png)

 * Number of instances: 5
 * Dataset ids: scaling_0992, scaling_1006, scaling_1020, scaling_1034, scaling_1048

Last 10 lines of scaling_0992:
```
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Loading required namespace: scaterlegacy
Loading required namespace: embeddr
Error in order(r, decreasing = TRUE) : 
  Failed to allocate working memory for xtmp. Requested 15848 * 8 bytes
Calls: <Anonymous> -> weighted_graph -> apply -> FUN -> order
Execution halted
```


