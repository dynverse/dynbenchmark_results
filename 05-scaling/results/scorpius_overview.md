# scorpius
![Overview](scorpius.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/scorpius/10/r2gridengine/20180825_050958_scorpius_10_ziLFB1PQ4z/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 10
 * Dataset ids: scaling_0030, scaling_0075, scaling_0093, scaling_0104, scaling_0139, scaling_0168, scaling_0201, scaling_0225, scaling_0254, scaling_0389

Last 10 lines of scaling_0030:
```
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  smoothing parameter value too small
Calls: <Anonymous> -> <Anonymous> -> smoother_function -> <Anonymous>
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2

 * Number of instances: 24
 * Dataset ids: scaling_0105, scaling_0140, scaling_0180, scaling_0215, scaling_0255, scaling_0308, scaling_0330, scaling_0390, scaling_0454, scaling_0455, scaling_0505, scaling_0582, scaling_0600, scaling_0679, scaling_0680, scaling_0765, scaling_0819, scaling_0854, scaling_0855, scaling_0910, scaling_0950, scaling_0980, scaling_1022, scaling_1050

Last 10 lines of scaling_0105:
```
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error in stats::smooth.spline(lambda, xj, ..., df = df, keep.data = FALSE) : 
  'tol' must be strictly positive and finite
Calls: <Anonymous> -> <Anonymous> -> smoother_function -> <Anonymous>
Execution halted
```


