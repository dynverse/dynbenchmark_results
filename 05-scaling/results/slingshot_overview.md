# slingshot
![Overview](slingshot.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/slingshot/10/r2gridengine/20180825_051017_slingshot_10_85HyT1bdV6/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 112
 * Dataset ids: scaling_0003, scaling_0009, scaling_0010, scaling_0011, scaling_0015, scaling_0018, scaling_0020, scaling_0021, scaling_0022, scaling_0024, scaling_0027, scaling_0029, scaling_0030, scaling_0032, scaling_0039, scaling_0040, scaling_0044, scaling_0046, scaling_0050, scaling_0055, scaling_0060, scaling_0064, scaling_0065, scaling_0072, scaling_0074, scaling_0075, scaling_0081, scaling_0091, scaling_0093, scaling_0102, scaling_0103, scaling_0104, scaling_0105, scaling_0111, scaling_0123, scaling_0125, scaling_0126, scaling_0137, scaling_0138, scaling_0139, scaling_0140, scaling_0146, scaling_0150, scaling_0156, scaling_0167, scaling_0168, scaling_0178, scaling_0179, scaling_0180, scaling_0187, scaling_0198, scaling_0201, scaling_0212, scaling_0213, scaling_0214, scaling_0215, scaling_0221, scaling_0225, scaling_0231, scaling_0237, scaling_0242, scaling_0243, scaling_0254, scaling_0255, scaling_0274, scaling_0275, scaling_0286, scaling_0307, scaling_0308, scaling_0327, scaling_0328, scaling_0329, scaling_0330, scaling_0340, scaling_0369, scaling_0370, scaling_0388, scaling_0389, scaling_0390, scaling_0403, scaling_0428, scaling_0429, scaling_0452, scaling_0453, scaling_0454, scaling_0455, scaling_0485, scaling_0503, scaling_0504, scaling_0505, scaling_0517, scaling_0525, scaling_0543, scaling_0555, scaling_0582, scaling_0598, scaling_0599, scaling_0600, scaling_0647, scaling_0648, scaling_0677, scaling_0679, scaling_0680, scaling_0731, scaling_0762, scaling_0764, scaling_0765, scaling_0819, scaling_0851, scaling_0854, scaling_0855, scaling_0950

Last 10 lines of scaling_0003:
```
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Using diagonal covariance matrix
Error in solve.default(s1 + s2) : 
  Lapack routine dgesv: system is exactly singular: U[1,1] = 0
Calls: slingshot ... dist.fun -> .dist_clusters_diag -> solve -> solve.default
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 2

 * Number of instances: 28
 * Dataset ids: scaling_0087, scaling_0118, scaling_0162, scaling_0194, scaling_0297, scaling_0350, scaling_0360, scaling_0416, scaling_0465, scaling_0564, scaling_0573, scaling_0616, scaling_0632, scaling_0646, scaling_0678, scaling_0697, scaling_0730, scaling_0763, scaling_0783, scaling_0817, scaling_0818, scaling_0852, scaling_0853, scaling_0908, scaling_0909, scaling_0934, scaling_1021, scaling_1048

Last 10 lines of scaling_0087:
```
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Using full covariance matrix
Error in solve.default(s1 + s2) : 
  system is computationally singular: reciprocal condition number = 3.84553e-18
Calls: slingshot ... dist.fun -> .dist_clusters_full -> solve -> solve.default
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 3

 * Number of instances: 8
 * Dataset ids: scaling_0119, scaling_0475, scaling_0581, scaling_0676, scaling_0714, scaling_0949, scaling_0979, scaling_1049

Last 10 lines of scaling_0119:
```
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Using full covariance matrix
Error in solve.default(s1 + s2) : 
  Lapack routine dgesv: system is exactly singular: U[1,1] = 0
Calls: slingshot ... dist.fun -> .dist_clusters_full -> solve -> solve.default
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 4

 * Number of instances: 4
 * Dataset ids: scaling_0120, scaling_0121, scaling_0197, scaling_0323

Last 10 lines of scaling_0120:
```
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Using diagonal covariance matrix
Error in smooth.spline(lambda, xj, w = w, ..., df = df, tol = tol, keep.data = FALSE,  : 
  need at least four unique 'x' values
Calls: slingshot ... tryCatchList -> tryCatchOne -> <Anonymous> -> smooth.spline
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 5

 * Number of instances: 1
 * Dataset ids: scaling_0451

Last 10 lines of scaling_0451:
```
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Using diagonal covariance matrix
Error in cut.default(pst, breaks = c(-Inf, non_ends, Inf)) : 
  'breaks' are not unique
Calls: map_df -> map -> .f -> cut -> cut.default
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 6

 * Number of instances: 1
 * Dataset ids: scaling_0699

Last 10 lines of scaling_0699:
```
  longer object length is not a multiple of shorter object length
9: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
Using diagonal covariance matrix
Curves for Lineage3 and average1 appear to be going in opposite directions. No longer forcing them to share an initial point. To manually override this, set allow.breaks = FALSE.
Curves for Lineage4 and average2 appear to be going in opposite directions. No longer forcing them to share an initial point. To manually override this, set allow.breaks = FALSE.
Error in if (box.vals[1] == box.vals[5]) { : 
  missing value where TRUE/FALSE needed
Calls: slingshot ... getCurves -> .local -> lapply -> FUN -> .percent_shrinkage
Execution halted
```

### ERROR CLUSTER METHOD_ERROR -- 7

 * Number of instances: 1
 * Dataset ids: scaling_0785

Last 10 lines of scaling_0785:
```
8: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
9: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
Using diagonal covariance matrix
Curves for Lineage4 and average2 appear to be going in opposite directions. No longer forcing them to share an initial point. To manually override this, set allow.breaks = FALSE.
Curves for Lineage3 and average1 appear to be going in opposite directions. No longer forcing them to share an initial point. To manually override this, set allow.breaks = FALSE.
Error in labels[[start_cell]] : 
  attempt to select less than one element in get1index
Execution halted
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1

 * Number of instances: 19
 * Dataset ids: scaling_0748, scaling_0801, scaling_0836, scaling_0837, scaling_0865, scaling_0876, scaling_0897, scaling_0898, scaling_0926, scaling_0942, scaling_0955, scaling_0961, scaling_0973, scaling_0992, scaling_0993, scaling_1006, scaling_1007, scaling_1034, scaling_1035

Last 10 lines of scaling_0748:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/slingshot/10/r2gridengine/20180825_051017_slingshot_10_85HyT1bdV6/log/log.748.e.txt
```

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1

 * Number of instances: 1
 * Dataset ids: scaling_0810

Last 10 lines of scaling_0810:
```
12: lapply(X = X, FUN = FUN, ...)
13: parallel::mclapply(seq_len(nrow(dataset)), mc.cores = mc_cores,     function(i) {        dataseti <- dynutils::extract_row_to_list(dataset, i)        model <- method_outputs$model[[i]]        if (!is.null(model)) {            time0 <- Sys.time()            model <- model %>% dynwrap::add_cell_waypoints(num_cells_selected = length(dataseti$waypoint_cells))            time1 <- Sys.time()            time_cellwaypoints <- as.numeric(difftime(time1,                 time0, units = "sec"))            df_cellwaypoints <- data_frame(time_cellwaypoints)        }        else {            df_cellwaypoints <- NULL        }        metrics_summary <- calculate_metrics(dataseti, model,             metrics)        summary <- bind_cols(method_outputs$summary[[i]], df_cellwaypoints,             metrics_summary)        if (!output_model && !is.null(model)) {            model <- TRUE        }        lst(summary, model)    })
14: evaluate_ti_method(dataset = dataset, method = method, parameters = params,     metrics = metrics, give_priors = priors, output_model = output_models,     mc_cores = 1, verbose = verbose)
15: benchmark_run_evaluation(i = i, subdesign = subdesign, metrics = metrics,     verbose = verbose, error_mode = FALSE, output_models = output_models)
16: (function (i) {    benchmark_run_evaluation(i = i, subdesign = subdesign, metrics = metrics,         verbose = verbose, error_mode = FALSE, output_models = output_models)})(810L)
17: do.call(PitSoL_params$FUN, c(list(PitSoL_params$X[[PitSoL_data]]),     PitSoL_params$DOTPARAMS))
18: FUN(X[[i]], ...)
19: lapply(seq(PitSoL_params$QSUB_START[[PitSoL_index]], PitSoL_params$QSUB_STOP[[PitSoL_index]]),     function(PitSoL_data) {        do.call(PitSoL_params$FUN, c(list(PitSoL_params$X[[PitSoL_data]]),             PitSoL_params$DOTPARAMS))    })
An irrecoverable exception occurred. R is aborting now ...
/var/spool/sge/prismcls05/job_scripts/8648: line 11: 111299 Segmentation fault      (core dumped) Rscript --default-packages=methods,stats,utils,graphics,grDevices script.R $SGE_TASK_ID
```

### ERROR CLUSTER MEMORY_LIMIT -- 2

 * Number of instances: 10
 * Dataset ids: scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0910, scaling_0994, scaling_1008, scaling_1022, scaling_1036, scaling_1050

Last 10 lines of scaling_0866:
```
The following objects are masked from 'package:base':
    intersect, setdiff, setequal, union
Attaching package: 'purrr'
The following object is masked from 'package:jsonlite':
    flatten
Warning messages:
1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
2: 'rgl_init' failed, running with rgl.useNULL = TRUE 
Error: cannot allocate vector of size 5.9 Gb
Execution halted
```

### ERROR CLUSTER MEMORY_LIMIT -- 3

 * Number of instances: 5
 * Dataset ids: scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980

Last 10 lines of scaling_0956:
```
6: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
7: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
8: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
9: In lm(pca$sdev[1:20] ~ x + x2)$residuals^2 * rep(1:2, each = 10) :
  longer object length is not a multiple of shorter object length
Error: cannot allocate vector of size 5.9 Gb
Execution halted
```


