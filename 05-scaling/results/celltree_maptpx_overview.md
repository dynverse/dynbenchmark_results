# celltree_maptpx
![Overview](celltree_maptpx.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/celltree_maptpx/10/r2gridengine/20180825_051127_celltree_maptpx_10_mDIksDGh4o/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 6
 * Dataset ids: scaling_0002, scaling_0157, scaling_0371, scaling_0466, scaling_0762, scaling_0907

Last 10 lines of scaling_0002:
```
Using root vertex: 7
Adding branch #1:
[1]  8  5  4  9  6  3  2 10
Using branch width: 0.98 (width.scale.factor: 1.5)
Outliers: 0
Total number of branches: 1 (forks: 0)
Error in apply(dists[backbone, -backbone], 2, which.min) : 
  dim(X) must have a positive length
Calls: <Anonymous> -> apply
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2

 * Number of instances: 50
 * Dataset ids: scaling_0093, scaling_0105, scaling_0126, scaling_0140, scaling_0168, scaling_0180, scaling_0201, scaling_0215, scaling_0225, scaling_0243, scaling_0254, scaling_0255, scaling_0308, scaling_0329, scaling_0330, scaling_0370, scaling_0389, scaling_0390, scaling_0429, scaling_0453, scaling_0454, scaling_0455, scaling_0485, scaling_0504, scaling_0505, scaling_0525, scaling_0555, scaling_0582, scaling_0599, scaling_0600, scaling_0648, scaling_0678, scaling_0679, scaling_0680, scaling_0731, scaling_0763, scaling_0764, scaling_0765, scaling_0819, scaling_0853, scaling_0854, scaling_0855, scaling_0888, scaling_0909, scaling_0910, scaling_0950, scaling_0980, scaling_1022, scaling_1049, scaling_1050

Last 10 lines of scaling_0093:
```
log BF( 13 ) = 4454.16
log posterior increase: 0.02, done.
log BF( 14 ) = 4857.87
log posterior increase: 0.02, done.
log BF( 15 ) = 5265.25
Selected k = 15 topics
Error in options(expressions = length(cell.names) * 5) : 
  'expressions' parameter invalid, allowed 25...500000
Calls: <Anonymous> -> options
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 3

 * Number of instances: 8
 * Dataset ids: scaling_0517, scaling_0581, scaling_0646, scaling_0677, scaling_0851, scaling_0852, scaling_0949, scaling_1047

Last 10 lines of scaling_0517:
```
[2479]   74  258  425  933  793  272 1104  221 2013   94 2240  282 1475 1454
[2493] 1333  576 1935 2299 1303  742 1625 2428  637 1021 1966 1490 1331 2221
[2507]   36 1203  202 2213  533
Using branch width: 0.352 (width.scale.factor: 1.5)
Outliers: 0
Total number of branches: 1 (forks: 0)
Backbone fork merge (width: 0.352): 2512Error in doTryCatch(return(expr), name, parentenv, handler) : 
  node stack overflow
Calls: <Anonymous> ... tryCatch -> tryCatchList -> tryCatchOne -> doTryCatch
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1

 * Number of instances: 37
 * Dataset ids: scaling_0697, scaling_0714, scaling_0748, scaling_0782, scaling_0783, scaling_0800, scaling_0801, scaling_0818, scaling_0836, scaling_0837, scaling_0865, scaling_0866, scaling_0876, scaling_0877, scaling_0887, scaling_0898, scaling_0899, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0992, scaling_0993, scaling_0994, scaling_1006, scaling_1007, scaling_1008, scaling_1020, scaling_1021, scaling_1034, scaling_1035, scaling_1036, scaling_1048

Last 10 lines of scaling_0697:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/celltree_maptpx/10/r2gridengine/20180825_051127_celltree_maptpx_10_mDIksDGh4o/log/log.697.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1

 * Number of instances: 21
 * Dataset ids: scaling_0616, scaling_0632, scaling_0664, scaling_0696, scaling_0713, scaling_0730, scaling_0747, scaling_0781, scaling_0799, scaling_0817, scaling_0835, scaling_0864, scaling_0875, scaling_0886, scaling_0897, scaling_0908, scaling_0955, scaling_0961, scaling_0967, scaling_0973, scaling_0979

Last 10 lines of scaling_0616:
```
log posterior increase: 183.42, 13.13, 16.13, done.
log BF( 14 ) = 453820.29
log posterior increase: 181.44, 12.69, 12.25, done.
log BF( 15 ) = 462612.53
Selected k = 15 topics
Using rooting method: longest.path
Error in graph.adjacency.dense(adjmatrix, mode = mode, weighted = weighted,  : 
  At type_indexededgelist.c:309 : cannot add edges, Out of memory
Calls: <Anonymous> -> graph.adjacency -> graph.adjacency.dense
Execution halted
```


