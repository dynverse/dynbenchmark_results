# gpfates
![Overview](gpfates.png)

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/gpfates_memory_limit_1.png)

 * Number of instances: 15
 * Dataset ids: scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0910, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_1068, scaling_1087, scaling_1106, scaling_1125, scaling_1144

Last 10 lines of scaling_0866:
```
    super(BayesianGPLVM,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp_mpi.py", line 122, in parameters_changed
    super(SparseGP_MPI,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp.py", line 80, in parameters_changed
    mean_function=self.mean_function)
  File "/usr/local/lib/python3.6/site-packages/GPy/inference/latent_function_inference/var_dtc.py", line 146, in inference
    - np.eye(Y.shape[0]), VVT_factor)
  File "/usr/local/lib/python3.6/site-packages/numpy/lib/twodim_base.py", line 186, in eye
    m = zeros((N, M), dtype=dtype, order=order)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/gpfates_memory_limit_2.png)

 * Number of instances: 2
 * Dataset ids: scaling_0909, scaling_1104

Last 10 lines of scaling_0909:
```
    [callble(self, which=which) for _, _, callble in self.observers]
  File "/usr/local/lib/python3.6/site-packages/paramz/core/observable.py", line 91, in <listcomp>
    [callble(self, which=which) for _, _, callble in self.observers]
  File "/usr/local/lib/python3.6/site-packages/paramz/core/parameter_core.py", line 508, in _parameters_changed_notification
    self.parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPclust/OMGP.py", line 38, in parameters_changed
    self.update_kern_grads()
  File "/usr/local/lib/python3.6/site-packages/GPclust/OMGP.py", line 77, in update_kern_grads
    kern.update_gradients_full(dL_dK=.5*dL_dB, X=self.X)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 3
![Cluster plot](error_class_plots/gpfates_memory_limit_3.png)

 * Number of instances: 10
 * Dataset ids: scaling_0994, scaling_1008, scaling_1022, scaling_1036, scaling_1050, scaling_1069, scaling_1088, scaling_1107, scaling_1126, scaling_1145

Last 10 lines of scaling_0994:
```
    self.parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/models/bayesian_gplvm.py", line 85, in parameters_changed
    super(BayesianGPLVM,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp_mpi.py", line 122, in parameters_changed
    super(SparseGP_MPI,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp.py", line 80, in parameters_changed
    mean_function=self.mean_function)
  File "/usr/local/lib/python3.6/site-packages/GPy/inference/latent_function_inference/var_dtc.py", line 145, in inference
    dL_dm = -np.dot((_LBi_Lmi_psi1.T.dot(_LBi_Lmi_psi1))
MemoryError
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/gpfates_method_error_1.png)

 * Number of instances: 144
 * Dataset ids: scaling_0255, scaling_0307, scaling_0308, scaling_0319, scaling_0338, scaling_0379, scaling_0400, scaling_0412, scaling_0415, scaling_0416, scaling_0429, scaling_0442, scaling_0453, scaling_0455, scaling_0464, scaling_0483, scaling_0485, scaling_0493, scaling_0504, scaling_0505, scaling_0513, scaling_0517, scaling_0521, scaling_0525, scaling_0529, scaling_0531, scaling_0548, scaling_0549, scaling_0555, scaling_0561, scaling_0562, scaling_0564, scaling_0571, scaling_0572, scaling_0581, scaling_0582, scaling_0590, scaling_0591, scaling_0627, scaling_0628, scaling_0629, scaling_0631, scaling_0632, scaling_0642, scaling_0645, scaling_0661, scaling_0662, scaling_0674, scaling_0676, scaling_0677, scaling_0678, scaling_0679, scaling_0680, scaling_0691, scaling_0693, scaling_0697, scaling_0709, scaling_0711, scaling_0712, scaling_0713, scaling_0724, scaling_0729, scaling_0730, scaling_0744, scaling_0746, scaling_0747, scaling_0748, scaling_0760, scaling_0762, scaling_0764, scaling_0775, scaling_0777, scaling_0778, scaling_0779, scaling_0781, scaling_0792, scaling_0793, scaling_0797, scaling_0799, scaling_0812, scaling_0813, scaling_0816, scaling_0817, scaling_0819, scaling_0832, scaling_0833, scaling_0835, scaling_0850, scaling_0851, scaling_0852, scaling_0854, scaling_0862, scaling_0863, scaling_0874, scaling_0883, scaling_0885, scaling_0886, scaling_0893, scaling_0897, scaling_0907, scaling_0908, scaling_0915, scaling_0917, scaling_0931, scaling_0932, scaling_0933, scaling_0947, scaling_0948, scaling_0949, scaling_0955, scaling_0966, scaling_0967, scaling_0977, scaling_0979, scaling_0988, scaling_0990, scaling_0991, scaling_1002, scaling_1005, scaling_1015, scaling_1017, scaling_1019, scaling_1044, scaling_1045, scaling_1046, scaling_1047, scaling_1059, scaling_1060, scaling_1061, scaling_1063, scaling_1064, scaling_1081, scaling_1082, scaling_1083, scaling_1100, scaling_1102, scaling_1118, scaling_1120, scaling_1123, scaling_1137, scaling_1138, scaling_1139, scaling_1140, scaling_1141

Last 10 lines of scaling_0255:
```
    super(BayesianGPLVM,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp_mpi.py", line 122, in parameters_changed
    super(SparseGP_MPI,self).parameters_changed()
  File "/usr/local/lib/python3.6/site-packages/GPy/core/sparse_gp.py", line 80, in parameters_changed
    mean_function=self.mean_function)
  File "/usr/local/lib/python3.6/site-packages/GPy/inference/latent_function_inference/var_dtc.py", line 135, in inference
    LB = jitchol(B)
  File "/usr/local/lib/python3.6/site-packages/GPy/util/linalg.py", line 64, in jitchol
    raise linalg.LinAlgError("not pd: non-positive diagonal elements")
numpy.linalg.linalg.LinAlgError: not pd: non-positive diagonal elements
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/gpfates_time_limit_1.png)

 * Number of instances: 97
 * Dataset ids: scaling_0330, scaling_0380, scaling_0389, scaling_0390, scaling_0441, scaling_0454, scaling_0494, scaling_0495, scaling_0503, scaling_0554, scaling_0573, scaling_0589, scaling_0598, scaling_0599, scaling_0600, scaling_0615, scaling_0616, scaling_0647, scaling_0648, scaling_0660, scaling_0663, scaling_0664, scaling_0675, scaling_0695, scaling_0696, scaling_0714, scaling_0731, scaling_0743, scaling_0745, scaling_0759, scaling_0761, scaling_0763, scaling_0765, scaling_0780, scaling_0782, scaling_0783, scaling_0798, scaling_0800, scaling_0801, scaling_0818, scaling_0831, scaling_0834, scaling_0836, scaling_0837, scaling_0848, scaling_0849, scaling_0853, scaling_0855, scaling_0864, scaling_0865, scaling_0875, scaling_0876, scaling_0887, scaling_0896, scaling_0898, scaling_0906, scaling_0918, scaling_0925, scaling_0926, scaling_0934, scaling_0939, scaling_0940, scaling_0941, scaling_0942, scaling_0950, scaling_0961, scaling_0973, scaling_0978, scaling_0992, scaling_0993, scaling_1006, scaling_1007, scaling_1020, scaling_1021, scaling_1030, scaling_1031, scaling_1032, scaling_1033, scaling_1034, scaling_1035, scaling_1048, scaling_1049, scaling_1065, scaling_1066, scaling_1067, scaling_1084, scaling_1085, scaling_1086, scaling_1103, scaling_1105, scaling_1119, scaling_1121, scaling_1122, scaling_1124, scaling_1136, scaling_1142, scaling_1143

Last 10 lines of scaling_0330:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/gpfates/Cat1/r2gridengine/20181008_142101_gpfates_Cat1_UIp7SNlSTP/log/log.330.e.txt
```


