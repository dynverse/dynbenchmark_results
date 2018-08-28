# scoup
![Overview](scoup.svg)

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/scoup_method_error_1.png)

 * Number of instances: 201
 * Dataset ids: scaling_0021, scaling_0023, scaling_0027, scaling_0038, scaling_0046, scaling_0048, scaling_0050, scaling_0062, scaling_0064, scaling_0069, scaling_0073, scaling_0074, scaling_0089, scaling_0091, scaling_0098, scaling_0102, scaling_0103, scaling_0104, scaling_0115, scaling_0125, scaling_0126, scaling_0129, scaling_0130, scaling_0131, scaling_0132, scaling_0135, scaling_0136, scaling_0138, scaling_0146, scaling_0148, scaling_0150, scaling_0171, scaling_0172, scaling_0173, scaling_0177, scaling_0179, scaling_0196, scaling_0197, scaling_0198, scaling_0200, scaling_0203, scaling_0204, scaling_0211, scaling_0214, scaling_0215, scaling_0218, scaling_0220, scaling_0221, scaling_0225, scaling_0239, scaling_0241, scaling_0242, scaling_0247, scaling_0248, scaling_0251, scaling_0254, scaling_0266, scaling_0267, scaling_0268, scaling_0269, scaling_0270, scaling_0272, scaling_0273, scaling_0274, scaling_0299, scaling_0300, scaling_0304, scaling_0305, scaling_0311, scaling_0312, scaling_0313, scaling_0317, scaling_0322, scaling_0323, scaling_0326, scaling_0327, scaling_0329, scaling_0330, scaling_0340, scaling_0364, scaling_0365, scaling_0366, scaling_0367, scaling_0368, scaling_0369, scaling_0375, scaling_0376, scaling_0377, scaling_0378, scaling_0382, scaling_0385, scaling_0387, scaling_0418, scaling_0419, scaling_0420, scaling_0423, scaling_0426, scaling_0427, scaling_0428, scaling_0432, scaling_0435, scaling_0445, scaling_0446, scaling_0447, scaling_0449, scaling_0453, scaling_0455, scaling_0467, scaling_0477, scaling_0478, scaling_0479, scaling_0481, scaling_0482, scaling_0483, scaling_0487, scaling_0491, scaling_0494, scaling_0497, scaling_0502, scaling_0504, scaling_0505, scaling_0515, scaling_0516, scaling_0522, scaling_0538, scaling_0540, scaling_0541, scaling_0542, scaling_0543, scaling_0547, scaling_0548, scaling_0550, scaling_0551, scaling_0552, scaling_0553, scaling_0554, scaling_0566, scaling_0575, scaling_0577, scaling_0578, scaling_0586, scaling_0587, scaling_0590, scaling_0594, scaling_0596, scaling_0598, scaling_0639, scaling_0641, scaling_0645, scaling_0652, scaling_0654, scaling_0661, scaling_0667, scaling_0668, scaling_0671, scaling_0674, scaling_0675, scaling_0719, scaling_0720, scaling_0721, scaling_0722, scaling_0724, scaling_0725, scaling_0726, scaling_0727, scaling_0736, scaling_0737, scaling_0739, scaling_0742, scaling_0746, scaling_0753, scaling_0754, scaling_0756, scaling_0758, scaling_0759, scaling_0760, scaling_0812, scaling_0813, scaling_0814, scaling_0815, scaling_0823, scaling_0827, scaling_0828, scaling_0829, scaling_0830, scaling_0834, scaling_0842, scaling_0845, scaling_0847, scaling_0848, scaling_0882, scaling_0884, scaling_0885, scaling_0892, scaling_0893, scaling_0938, scaling_0939, scaling_0971, scaling_1027, scaling_1029, scaling_1030

Last 10 lines of scaling_0021:
```
The following object is masked from 'package:jsonlite':
    flatten
/SCOUP/sp data init time_sp dimred 10 25 2
/SCOUP/scoup data init time_sp gpara cpara ll 10 25 -k 2 -m 100 -M 100 -a 0.1 -A 100 -t 0.001 -T 2 -s 0.1 -e 0.01
0-th iteration in first EM
log-likelihood: -nan
0-th iteration in second EM
log-likelihood: nan
Error: SCOUP returned NaNs
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/scoup_method_error_2.png)

 * Number of instances: 5
 * Dataset ids: scaling_0994, scaling_1008, scaling_1022, scaling_1036, scaling_1050

Last 10 lines of scaling_0994:
```
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
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

 * Number of instances: 196
 * Dataset ids: scaling_0565, scaling_0573, scaling_0600, scaling_0601, scaling_0616, scaling_0617, scaling_0631, scaling_0632, scaling_0633, scaling_0648, scaling_0649, scaling_0664, scaling_0678, scaling_0679, scaling_0680, scaling_0681, scaling_0682, scaling_0683, scaling_0696, scaling_0697, scaling_0698, scaling_0699, scaling_0700, scaling_0712, scaling_0713, scaling_0714, scaling_0715, scaling_0716, scaling_0729, scaling_0730, scaling_0731, scaling_0732, scaling_0733, scaling_0734, scaling_0745, scaling_0747, scaling_0748, scaling_0750, scaling_0751, scaling_0763, scaling_0764, scaling_0765, scaling_0766, scaling_0767, scaling_0768, scaling_0769, scaling_0770, scaling_0780, scaling_0781, scaling_0782, scaling_0784, scaling_0785, scaling_0786, scaling_0787, scaling_0798, scaling_0799, scaling_0800, scaling_0802, scaling_0803, scaling_0804, scaling_0805, scaling_0816, scaling_0817, scaling_0818, scaling_0820, scaling_0821, scaling_0822, scaling_0833, scaling_0835, scaling_0836, scaling_0839, scaling_0840, scaling_0841, scaling_0851, scaling_0852, scaling_0853, scaling_0854, scaling_0857, scaling_0858, scaling_0864, scaling_0865, scaling_0868, scaling_0869, scaling_0870, scaling_0874, scaling_0875, scaling_0876, scaling_0879, scaling_0880, scaling_0883, scaling_0886, scaling_0887, scaling_0890, scaling_0891, scaling_0894, scaling_0895, scaling_0896, scaling_0897, scaling_0898, scaling_0901, scaling_0902, scaling_0903, scaling_0904, scaling_0905, scaling_0906, scaling_0907, scaling_0908, scaling_0909, scaling_0911, scaling_0912, scaling_0917, scaling_0919, scaling_0920, scaling_0921, scaling_0922, scaling_0923, scaling_0924, scaling_0925, scaling_0927, scaling_0928, scaling_0929, scaling_0930, scaling_0931, scaling_0932, scaling_0933, scaling_0935, scaling_0936, scaling_0940, scaling_0941, scaling_0943, scaling_0944, scaling_0946, scaling_0947, scaling_0948, scaling_0949, scaling_0952, scaling_0955, scaling_0958, scaling_0961, scaling_0964, scaling_0965, scaling_0966, scaling_0967, scaling_0970, scaling_0972, scaling_0973, scaling_0976, scaling_0977, scaling_0978, scaling_0979, scaling_0982, scaling_0983, scaling_0984, scaling_0991, scaling_0992, scaling_0996, scaling_0997, scaling_0998, scaling_0999, scaling_1000, scaling_1001, scaling_1002, scaling_1003, scaling_1004, scaling_1005, scaling_1006, scaling_1010, scaling_1011, scaling_1012, scaling_1013, scaling_1014, scaling_1015, scaling_1016, scaling_1017, scaling_1018, scaling_1019, scaling_1020, scaling_1024, scaling_1025, scaling_1026, scaling_1028, scaling_1031, scaling_1032, scaling_1033, scaling_1034, scaling_1038, scaling_1039, scaling_1040, scaling_1041, scaling_1042, scaling_1043, scaling_1044, scaling_1045, scaling_1046, scaling_1047, scaling_1048

Last 10 lines of scaling_0565:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/scoup/10/r2gridengine/20180825_051130_scoup_10_EapPjzkhf4/log/log.565.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/scoup_memory_limit_1.png)

 * Number of instances: 38
 * Dataset ids: scaling_0783, scaling_0801, scaling_0819, scaling_0837, scaling_0855, scaling_0856, scaling_0866, scaling_0867, scaling_0877, scaling_0878, scaling_0888, scaling_0889, scaling_0899, scaling_0910, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0951, scaling_0956, scaling_0957, scaling_0962, scaling_0963, scaling_0968, scaling_0969, scaling_0974, scaling_0975, scaling_0980, scaling_0981, scaling_0993, scaling_0995, scaling_1007, scaling_1009, scaling_1021, scaling_1023, scaling_1035, scaling_1049

Last 10 lines of scaling_0783:
```
    flatten
/SCOUP/sp data init time_sp dimred 10 25119 2
terminate called after throwing an instance of 'std::bad_alloc'
  what():  std::bad_alloc
Aborted (core dumped)
/SCOUP/scoup data init time_sp gpara cpara ll 10 25119 -k 1 -m 100 -M 100 -a 0.1 -A 100 -t 0.001 -T 2 -s 0.1 -e 0.01
error at reading initial parameter
Error in `.rowNamesDF<-`(x, value = value) : invalid 'row.names' length
Calls: rownames<- ... row.names<- -> row.names<-.data.frame -> .rowNamesDF<-
Execution halted
```


