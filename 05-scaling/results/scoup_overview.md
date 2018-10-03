# scoup
![Overview](scoup.png)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/scoup_method_error_1.png)

 * Number of instances: 156
 * Dataset ids: scaling_0029, scaling_0039, scaling_0044, scaling_0050, scaling_0072, scaling_0073, scaling_0075, scaling_0101, scaling_0104, scaling_0138, scaling_0150, scaling_0178, scaling_0179, scaling_0212, scaling_0213, scaling_0214, scaling_0224, scaling_0225, scaling_0252, scaling_0254, scaling_0255, scaling_0272, scaling_0275, scaling_0290, scaling_0309, scaling_0321, scaling_0322, scaling_0324, scaling_0327, scaling_0328, scaling_0329, scaling_0330, scaling_0340, scaling_0385, scaling_0386, scaling_0387, scaling_0388, scaling_0444, scaling_0445, scaling_0447, scaling_0448, scaling_0449, scaling_0450, scaling_0451, scaling_0452, scaling_0454, scaling_0455, scaling_0468, scaling_0499, scaling_0500, scaling_0501, scaling_0503, scaling_0504, scaling_0505, scaling_0522, scaling_0550, scaling_0552, scaling_0553, scaling_0555, scaling_0567, scaling_0598, scaling_0666, scaling_0667, scaling_0668, scaling_0673, scaling_0675, scaling_0757, scaling_0759, scaling_0760, scaling_0846, scaling_0847, scaling_0848, scaling_0850, scaling_0904, scaling_0905, scaling_0945, scaling_0947, scaling_0948, scaling_0029, scaling_0039, scaling_0044, scaling_0050, scaling_0072, scaling_0073, scaling_0075, scaling_0101, scaling_0104, scaling_0138, scaling_0150, scaling_0178, scaling_0179, scaling_0212, scaling_0213, scaling_0214, scaling_0224, scaling_0225, scaling_0252, scaling_0254, scaling_0255, scaling_0272, scaling_0275, scaling_0290, scaling_0309, scaling_0321, scaling_0322, scaling_0324, scaling_0327, scaling_0328, scaling_0329, scaling_0330, scaling_0340, scaling_0385, scaling_0386, scaling_0387, scaling_0388, scaling_0444, scaling_0445, scaling_0447, scaling_0448, scaling_0449, scaling_0450, scaling_0451, scaling_0452, scaling_0454, scaling_0455, scaling_0468, scaling_0499, scaling_0500, scaling_0501, scaling_0503, scaling_0504, scaling_0505, scaling_0522, scaling_0550, scaling_0552, scaling_0553, scaling_0555, scaling_0567, scaling_0598, scaling_0666, scaling_0667, scaling_0668, scaling_0673, scaling_0675, scaling_0757, scaling_0759, scaling_0760, scaling_0846, scaling_0847, scaling_0848, scaling_0850, scaling_0904, scaling_0905, scaling_0945, scaling_0947, scaling_0948

Last 10 lines of scaling_0029:
```
The following object is masked from ‘package:jsonlite’:
    flatten
/SCOUP/sp data init time_sp dimred 16 16 2
/SCOUP/scoup data init time_sp gpara cpara ll 16 16 -k 10 -m 100 -M 100 -a 0.1 -A 100 -t 0.001 -T 2 -s 0.1 -e 0.01
0-th iteration in first EM
log-likelihood: -nan
0-th iteration in second EM
log-likelihood: nan
Error: SCOUP returned NaNs
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/scoup_method_error_2.png)

 * Number of instances: 10
 * Dataset ids: scaling_0994, scaling_1008, scaling_1022, scaling_1036, scaling_1050, scaling_0994, scaling_1008, scaling_1022, scaling_1036, scaling_1050

Last 10 lines of scaling_0994:
```
Attaching package: ‘purrr’
The following object is masked from ‘package:jsonlite’:
    flatten
/SCOUP/sp data init time_sp dimred 10 63096 2
Segmentation fault (core dumped)
/SCOUP/scoup data init time_sp gpara cpara ll 10 63096 -k 1 -m 100 -M 100 -a 0.1 -A 100 -t 0.001 -T 2 -s 0.1 -e 0.01
Segmentation fault (core dumped)
Error in `.rowNamesDF<-`(x, value = value) : invalid 'row.names' length
Calls: rownames<- ... row.names<- -> row.names<-.data.frame -> .rowNamesDF<-
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/scoup_time_limit_1.png)

 * Number of instances: 294
 * Dataset ids: scaling_0601, scaling_0616, scaling_0617, scaling_0632, scaling_0633, scaling_0648, scaling_0649, scaling_0661, scaling_0664, scaling_0680, scaling_0681, scaling_0682, scaling_0696, scaling_0697, scaling_0698, scaling_0699, scaling_0713, scaling_0714, scaling_0715, scaling_0716, scaling_0730, scaling_0731, scaling_0732, scaling_0733, scaling_0745, scaling_0747, scaling_0748, scaling_0750, scaling_0763, scaling_0764, scaling_0765, scaling_0766, scaling_0767, scaling_0768, scaling_0781, scaling_0782, scaling_0783, scaling_0784, scaling_0785, scaling_0786, scaling_0799, scaling_0800, scaling_0801, scaling_0802, scaling_0803, scaling_0804, scaling_0817, scaling_0818, scaling_0819, scaling_0820, scaling_0821, scaling_0822, scaling_0834, scaling_0835, scaling_0836, scaling_0837, scaling_0839, scaling_0840, scaling_0841, scaling_0852, scaling_0853, scaling_0854, scaling_0855, scaling_0857, scaling_0858, scaling_0864, scaling_0865, scaling_0868, scaling_0869, scaling_0875, scaling_0876, scaling_0879, scaling_0880, scaling_0886, scaling_0887, scaling_0890, scaling_0891, scaling_0897, scaling_0898, scaling_0899, scaling_0901, scaling_0902, scaling_0906, scaling_0907, scaling_0908, scaling_0909, scaling_0910, scaling_0911, scaling_0918, scaling_0919, scaling_0926, scaling_0927, scaling_0934, scaling_0935, scaling_0942, scaling_0943, scaling_0944, scaling_0946, scaling_0949, scaling_0950, scaling_0952, scaling_0955, scaling_0958, scaling_0961, scaling_0964, scaling_0967, scaling_0970, scaling_0973, scaling_0976, scaling_0977, scaling_0978, scaling_0979, scaling_0982, scaling_0983, scaling_0984, scaling_0991, scaling_0992, scaling_0993, scaling_0996, scaling_0997, scaling_1006, scaling_1007, scaling_1010, scaling_1011, scaling_1012, scaling_1019, scaling_1020, scaling_1021, scaling_1024, scaling_1025, scaling_1026, scaling_1032, scaling_1033, scaling_1034, scaling_1035, scaling_1038, scaling_1039, scaling_1040, scaling_1041, scaling_1042, scaling_1043, scaling_1044, scaling_1045, scaling_1046, scaling_1047, scaling_1048, scaling_1049, scaling_0601, scaling_0616, scaling_0617, scaling_0632, scaling_0633, scaling_0648, scaling_0649, scaling_0661, scaling_0664, scaling_0680, scaling_0681, scaling_0682, scaling_0696, scaling_0697, scaling_0698, scaling_0699, scaling_0713, scaling_0714, scaling_0715, scaling_0716, scaling_0730, scaling_0731, scaling_0732, scaling_0733, scaling_0745, scaling_0747, scaling_0748, scaling_0750, scaling_0763, scaling_0764, scaling_0765, scaling_0766, scaling_0767, scaling_0768, scaling_0781, scaling_0782, scaling_0783, scaling_0784, scaling_0785, scaling_0786, scaling_0799, scaling_0800, scaling_0801, scaling_0802, scaling_0803, scaling_0804, scaling_0817, scaling_0818, scaling_0819, scaling_0820, scaling_0821, scaling_0822, scaling_0834, scaling_0835, scaling_0836, scaling_0837, scaling_0839, scaling_0840, scaling_0841, scaling_0852, scaling_0853, scaling_0854, scaling_0855, scaling_0857, scaling_0858, scaling_0864, scaling_0865, scaling_0868, scaling_0869, scaling_0875, scaling_0876, scaling_0879, scaling_0880, scaling_0886, scaling_0887, scaling_0890, scaling_0891, scaling_0897, scaling_0898, scaling_0899, scaling_0901, scaling_0902, scaling_0906, scaling_0907, scaling_0908, scaling_0909, scaling_0910, scaling_0911, scaling_0918, scaling_0919, scaling_0926, scaling_0927, scaling_0934, scaling_0935, scaling_0942, scaling_0943, scaling_0944, scaling_0946, scaling_0949, scaling_0950, scaling_0952, scaling_0955, scaling_0958, scaling_0961, scaling_0964, scaling_0967, scaling_0970, scaling_0973, scaling_0976, scaling_0977, scaling_0978, scaling_0979, scaling_0982, scaling_0983, scaling_0984, scaling_0991, scaling_0992, scaling_0993, scaling_0996, scaling_0997, scaling_1006, scaling_1007, scaling_1010, scaling_1011, scaling_1012, scaling_1019, scaling_1020, scaling_1021, scaling_1024, scaling_1025, scaling_1026, scaling_1032, scaling_1033, scaling_1034, scaling_1035, scaling_1038, scaling_1039, scaling_1040, scaling_1041, scaling_1042, scaling_1043, scaling_1044, scaling_1045, scaling_1046, scaling_1047, scaling_1048, scaling_1049

Last 10 lines of scaling_0601:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/scoup/10/r2gridengine/20180924_185105_scoup_10_0H7SNJSe4f/log/log.601.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/scoup_memory_limit_1.png)

 * Number of instances: 42
 * Dataset ids: scaling_0856, scaling_0866, scaling_0867, scaling_0877, scaling_0878, scaling_0888, scaling_0889, scaling_0951, scaling_0956, scaling_0957, scaling_0962, scaling_0963, scaling_0968, scaling_0969, scaling_0974, scaling_0975, scaling_0980, scaling_0981, scaling_0995, scaling_1009, scaling_1023, scaling_0856, scaling_0866, scaling_0867, scaling_0877, scaling_0878, scaling_0888, scaling_0889, scaling_0951, scaling_0956, scaling_0957, scaling_0962, scaling_0963, scaling_0968, scaling_0969, scaling_0974, scaling_0975, scaling_0980, scaling_0981, scaling_0995, scaling_1009, scaling_1023

Last 10 lines of scaling_0856:
```
    flatten
/SCOUP/sp data init time_sp dimred 39811 10 2
terminate called after throwing an instance of 'std::bad_alloc'
  what():  std::bad_alloc
Aborted (core dumped)
/SCOUP/scoup data init time_sp gpara cpara ll 39811 10 -k 1 -m 100 -M 100 -a 0.1 -A 100 -t 0.001 -T 2 -s 0.1 -e 0.01
error at reading initial parameter
Error in `.rowNamesDF<-`(x, value = value) : invalid 'row.names' length
Calls: rownames<- ... row.names<- -> row.names<-.data.frame -> .rowNamesDF<-
Execution halted
```


