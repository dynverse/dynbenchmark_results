# sincell
![Overview](sincell.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/sincell/10/r2gridengine/20180825_050952_sincell_10_ZV5OnJvIfA/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 25
 * Dataset ids: scaling_0616, scaling_0632, scaling_0648, scaling_0664, scaling_0680, scaling_0696, scaling_0713, scaling_0730, scaling_0747, scaling_0764, scaling_0781, scaling_0799, scaling_0817, scaling_0835, scaling_0853, scaling_0864, scaling_0875, scaling_0886, scaling_0897, scaling_0908, scaling_0955, scaling_0961, scaling_0967, scaling_0973, scaling_0979

Last 10 lines of scaling_0616:
```
The following objects are masked from 'package:purrr':
    compose, simplify
The following objects are masked from 'package:dplyr':
    as_data_frame, groups, union
The following objects are masked from 'package:stats':
    decompose, spectrum
The following object is masked from 'package:base':
    union
Error: memory exhausted (limit reached?)
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1

 * Number of instances: 89
 * Dataset ids: scaling_0380, scaling_0402, scaling_0403, scaling_0416, scaling_0441, scaling_0442, scaling_0464, scaling_0465, scaling_0474, scaling_0475, scaling_0494, scaling_0495, scaling_0509, scaling_0513, scaling_0521, scaling_0531, scaling_0537, scaling_0543, scaling_0549, scaling_0562, scaling_0563, scaling_0571, scaling_0572, scaling_0580, scaling_0581, scaling_0589, scaling_0590, scaling_0612, scaling_0613, scaling_0614, scaling_0628, scaling_0629, scaling_0630, scaling_0644, scaling_0645, scaling_0646, scaling_0660, scaling_0661, scaling_0662, scaling_0676, scaling_0677, scaling_0678, scaling_0692, scaling_0693, scaling_0694, scaling_0709, scaling_0710, scaling_0711, scaling_0727, scaling_0728, scaling_0743, scaling_0744, scaling_0745, scaling_0761, scaling_0762, scaling_0777, scaling_0778, scaling_0779, scaling_0795, scaling_0796, scaling_0797, scaling_0815, scaling_0831, scaling_0832, scaling_0833, scaling_0850, scaling_0851, scaling_0863, scaling_0874, scaling_0885, scaling_0896, scaling_0907, scaling_0915, scaling_0916, scaling_0923, scaling_0924, scaling_0939, scaling_0940, scaling_0988, scaling_0989, scaling_0990, scaling_1002, scaling_1003, scaling_1004, scaling_1018, scaling_1030, scaling_1031, scaling_1032, scaling_1046

Last 10 lines of scaling_0380:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/sincell/10/r2gridengine/20180825_050952_sincell_10_ZV5OnJvIfA/log/log.380.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1

 * Number of instances: 30
 * Dataset ids: scaling_0564, scaling_0573, scaling_0582, scaling_0591, scaling_0600, scaling_0615, scaling_0631, scaling_0647, scaling_0663, scaling_0679, scaling_0695, scaling_0712, scaling_0729, scaling_0746, scaling_0763, scaling_0780, scaling_0798, scaling_0816, scaling_0834, scaling_0852, scaling_0917, scaling_0925, scaling_0933, scaling_0941, scaling_0949, scaling_0991, scaling_1005, scaling_1019, scaling_1033, scaling_1047

Last 10 lines of scaling_0564:
```
The following objects are masked from 'package:dplyr':
    as_data_frame, groups, union
The following objects are masked from 'package:stats':
    decompose, spectrum
The following object is masked from 'package:base':
    union
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At type_indexededgelist.c:309 : cannot add edges, Out of memory
Calls: %>% ... is_igraph -> %in% -> graph.adjacency -> graph.adjacency.dense
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 2

 * Number of instances: 50
 * Dataset ids: scaling_0697, scaling_0714, scaling_0731, scaling_0748, scaling_0765, scaling_0782, scaling_0783, scaling_0800, scaling_0801, scaling_0818, scaling_0819, scaling_0836, scaling_0837, scaling_0854, scaling_0855, scaling_0865, scaling_0866, scaling_0876, scaling_0877, scaling_0887, scaling_0888, scaling_0898, scaling_0899, scaling_0909, scaling_0910, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_0992, scaling_0993, scaling_0994, scaling_1006, scaling_1007, scaling_1008, scaling_1020, scaling_1021, scaling_1022, scaling_1034, scaling_1035, scaling_1036, scaling_1048, scaling_1049, scaling_1050

Last 10 lines of scaling_0697:
```
The following objects are masked from 'package:purrr':
    compose, simplify
The following objects are masked from 'package:dplyr':
    as_data_frame, groups, union
The following objects are masked from 'package:stats':
    decompose, spectrum
The following object is masked from 'package:base':
    union
Error: cannot allocate vector of size 958.2 Mb
Execution halted
```


