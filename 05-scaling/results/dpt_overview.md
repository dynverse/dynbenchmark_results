# dpt
![Overview](dpt.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/dpt/10/r2gridengine/20180825_051001_dpt_10_AyE5EcDUvY/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 175
 * Dataset ids: scaling_0001, scaling_0002, scaling_0003, scaling_0004, scaling_0006, scaling_0007, scaling_0008, scaling_0009, scaling_0010, scaling_0011, scaling_0012, scaling_0013, scaling_0015, scaling_0016, scaling_0017, scaling_0019, scaling_0020, scaling_0022, scaling_0023, scaling_0025, scaling_0026, scaling_0029, scaling_0031, scaling_0033, scaling_0035, scaling_0037, scaling_0039, scaling_0041, scaling_0043, scaling_0045, scaling_0047, scaling_0051, scaling_0052, scaling_0056, scaling_0057, scaling_0061, scaling_0062, scaling_0066, scaling_0067, scaling_0072, scaling_0076, scaling_0077, scaling_0082, scaling_0083, scaling_0088, scaling_0089, scaling_0094, scaling_0095, scaling_0101, scaling_0106, scaling_0107, scaling_0113, scaling_0114, scaling_0120, scaling_0121, scaling_0127, scaling_0128, scaling_0135, scaling_0151, scaling_0152, scaling_0157, scaling_0158, scaling_0163, scaling_0164, scaling_0169, scaling_0170, scaling_0176, scaling_0181, scaling_0188, scaling_0195, scaling_0202, scaling_0216, scaling_0218, scaling_0220, scaling_0222, scaling_0224, scaling_0226, scaling_0227, scaling_0232, scaling_0233, scaling_0238, scaling_0239, scaling_0244, scaling_0245, scaling_0251, scaling_0276, scaling_0277, scaling_0287, scaling_0288, scaling_0298, scaling_0299, scaling_0309, scaling_0310, scaling_0321, scaling_0341, scaling_0342, scaling_0351, scaling_0352, scaling_0361, scaling_0362, scaling_0371, scaling_0372, scaling_0382, scaling_0391, scaling_0392, scaling_0404, scaling_0405, scaling_0417, scaling_0418, scaling_0430, scaling_0431, scaling_0444, scaling_0456, scaling_0466, scaling_0476, scaling_0486, scaling_0506, scaling_0510, scaling_0514, scaling_0518, scaling_0522, scaling_0526, scaling_0532, scaling_0538, scaling_0544, scaling_0550, scaling_0556, scaling_0565, scaling_0574, scaling_0583, scaling_0601, scaling_0602, scaling_0617, scaling_0618, scaling_0633, scaling_0634, scaling_0649, scaling_0650, scaling_0666, scaling_0681, scaling_0682, scaling_0698, scaling_0699, scaling_0715, scaling_0716, scaling_0732, scaling_0733, scaling_0750, scaling_0766, scaling_0767, scaling_0784, scaling_0785, scaling_0802, scaling_0803, scaling_0820, scaling_0821, scaling_0839, scaling_0856, scaling_0867, scaling_0878, scaling_0889, scaling_0911, scaling_0919, scaling_0927, scaling_0935, scaling_0943, scaling_0951, scaling_0957, scaling_0963, scaling_0969, scaling_0975, scaling_0981, scaling_0995, scaling_1009, scaling_1023

Last 10 lines of scaling_0001:
```
The following objects are masked from 'package:stats':
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error in destiny::DiffusionMap(data = expression, sigma = params$sigma,  : 
  Eigen decomposition not possible if n <U+2264> n_eigs+1 (And 10 <U+2264> 21)
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2

 * Number of instances: 6
 * Dataset ids: scaling_0034, scaling_0108, scaling_0256, scaling_0567, scaling_0920, scaling_1011

Last 10 lines of scaling_0034:
```
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Processing Tip1
Processing Tip2
Processing Tip3
output saved in /data/tmp//RtmpdhC2aa/file1fa7c1170708c/ti/output: 
	output.rds
all(milestone_network$from %in% milestone_ids) isn't true.
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1

 * Number of instances: 25
 * Dataset ids: scaling_0616, scaling_0632, scaling_0648, scaling_0664, scaling_0680, scaling_0696, scaling_0713, scaling_0730, scaling_0747, scaling_0764, scaling_0781, scaling_0799, scaling_0817, scaling_0835, scaling_0853, scaling_0864, scaling_0875, scaling_0886, scaling_0897, scaling_0908, scaling_0955, scaling_0961, scaling_0967, scaling_0973, scaling_0979

Last 10 lines of scaling_0616:
```
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error in .T2Cmat(dsy2T(from), isTri = FALSE) : 
  Cholmod error 'out of memory' at file ../Core/cholmod_memory.c, line 147
Calls: <Anonymous> ... suppressMessages -> withCallingHandlers -> as -> asMethod -> .T2Cmat
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 2

 * Number of instances: 7
 * Dataset ids: scaling_0697, scaling_0714, scaling_0836, scaling_0854, scaling_0876, scaling_0898, scaling_1034

Last 10 lines of scaling_0697:
```
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error in triu(data) : 
  Cholmod error 'out of memory' at file ../Core/cholmod_memory.c, line 147
Calls: <Anonymous> ... callGeneric -> eval -> eval -> Matrix -> triu -> triu
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 3

 * Number of instances: 43
 * Dataset ids: scaling_0731, scaling_0748, scaling_0765, scaling_0782, scaling_0783, scaling_0800, scaling_0801, scaling_0818, scaling_0819, scaling_0837, scaling_0855, scaling_0865, scaling_0866, scaling_0877, scaling_0887, scaling_0888, scaling_0899, scaling_0909, scaling_0910, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_0992, scaling_0993, scaling_0994, scaling_1006, scaling_1007, scaling_1008, scaling_1020, scaling_1021, scaling_1022, scaling_1035, scaling_1036, scaling_1048, scaling_1049, scaling_1050

Last 10 lines of scaling_0731:
```
Attaching package: 'dplyr'
The following objects are masked from 'package:stats':
    filter, lag
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Error: cannot allocate vector of size 958.2 Mb
Execution halted
```


