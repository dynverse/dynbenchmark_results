# stemnet
![Overview](stemnet.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/stemnet/10/r2gridengine/20180825_051020_stemnet_10_Jz9PYgubb4/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 19
 * Dataset ids: scaling_0046, scaling_0065, scaling_0074, scaling_0075, scaling_0092, scaling_0103, scaling_0198, scaling_0252, scaling_0254, scaling_0323, scaling_0388, scaling_0446, scaling_0479, scaling_0501, scaling_0669, scaling_0757, scaling_0842, scaling_0904, scaling_1039

Last 10 lines of scaling_0046:
```
    flatten
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> glmnet -> lognet
In addition: Warning messages:
1: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
2: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

## ERROR STATUS MISSING_PRIOR

### ERROR CLUSTER MISSING_PRIOR -- 1

 * Number of instances: 28
 * Dataset ids: scaling_0001, scaling_0006, scaling_0009, scaling_0021, scaling_0048, scaling_0083, scaling_0106, scaling_0115, scaling_0135, scaling_0158, scaling_0183, scaling_0288, scaling_0311, scaling_0333, scaling_0337, scaling_0353, scaling_0407, scaling_0468, scaling_0522, scaling_0566, scaling_0585, scaling_0681, scaling_0699, scaling_0766, scaling_0878, scaling_0891, scaling_0911, scaling_1025

Last 10 lines of scaling_0001:
```
Forced to invent some end populations in order to at least generate a trajectory 
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> glmnet -> lognet
In addition: Warning messages:
1: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
2: In lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  :
  one multinomial or binomial class has fewer than 8  observations; dangerous ground
Execution halted
```

### ERROR CLUSTER MISSING_PRIOR -- 2

 * Number of instances: 190
 * Dataset ids: scaling_0002, scaling_0003, scaling_0004, scaling_0007, scaling_0008, scaling_0010, scaling_0012, scaling_0013, scaling_0015, scaling_0016, scaling_0017, scaling_0018, scaling_0019, scaling_0020, scaling_0022, scaling_0025, scaling_0026, scaling_0029, scaling_0032, scaling_0033, scaling_0034, scaling_0037, scaling_0038, scaling_0039, scaling_0041, scaling_0042, scaling_0043, scaling_0045, scaling_0047, scaling_0051, scaling_0052, scaling_0053, scaling_0056, scaling_0057, scaling_0058, scaling_0061, scaling_0066, scaling_0067, scaling_0072, scaling_0076, scaling_0077, scaling_0078, scaling_0082, scaling_0084, scaling_0088, scaling_0094, scaling_0095, scaling_0101, scaling_0107, scaling_0108, scaling_0109, scaling_0113, scaling_0116, scaling_0120, scaling_0127, scaling_0128, scaling_0129, scaling_0130, scaling_0141, scaling_0151, scaling_0152, scaling_0154, scaling_0157, scaling_0163, scaling_0169, scaling_0170, scaling_0176, scaling_0181, scaling_0188, scaling_0189, scaling_0195, scaling_0202, scaling_0203, scaling_0216, scaling_0222, scaling_0224, scaling_0226, scaling_0227, scaling_0228, scaling_0232, scaling_0233, scaling_0238, scaling_0244, scaling_0245, scaling_0251, scaling_0256, scaling_0257, scaling_0268, scaling_0276, scaling_0277, scaling_0278, scaling_0279, scaling_0287, scaling_0289, scaling_0298, scaling_0309, scaling_0310, scaling_0321, scaling_0341, scaling_0342, scaling_0351, scaling_0352, scaling_0361, scaling_0371, scaling_0372, scaling_0373, scaling_0382, scaling_0391, scaling_0392, scaling_0393, scaling_0395, scaling_0404, scaling_0405, scaling_0417, scaling_0430, scaling_0431, scaling_0432, scaling_0444, scaling_0456, scaling_0457, scaling_0466, scaling_0476, scaling_0486, scaling_0506, scaling_0510, scaling_0518, scaling_0526, scaling_0532, scaling_0544, scaling_0550, scaling_0556, scaling_0557, scaling_0565, scaling_0574, scaling_0583, scaling_0584, scaling_0601, scaling_0602, scaling_0617, scaling_0618, scaling_0619, scaling_0633, scaling_0649, scaling_0650, scaling_0651, scaling_0666, scaling_0682, scaling_0683, scaling_0684, scaling_0698, scaling_0700, scaling_0715, scaling_0732, scaling_0733, scaling_0734, scaling_0735, scaling_0750, scaling_0767, scaling_0768, scaling_0769, scaling_0784, scaling_0785, scaling_0786, scaling_0787, scaling_0802, scaling_0820, scaling_0821, scaling_0823, scaling_0839, scaling_0856, scaling_0857, scaling_0858, scaling_0867, scaling_0868, scaling_0889, scaling_0890, scaling_0919, scaling_0935, scaling_0943, scaling_0951, scaling_0952, scaling_0969, scaling_0975, scaling_0981, scaling_0982, scaling_0983, scaling_0995, scaling_0996, scaling_1009, scaling_1023

Last 10 lines of scaling_0002:
```
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Warning message:
STEMNET requires at least two end cell populations, but according to the prior information there are only 0 end populations!
Forced to invent some end populations in order to at least generate a trajectory 
Error in lognet(x, is.sparse, ix, jx, y, weights, offset, alpha, nobs,  : 
  one multinomial or binomial class has 1 or 0 observations; not allowed
Calls: <Anonymous> -> <Anonymous> -> lognet
Execution halted
```


