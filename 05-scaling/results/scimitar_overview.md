# scimitar
![Overview](scimitar.png)

## ERROR STATUS MEMORY_LIMIT

### ERROR CLUSTER MEMORY_LIMIT -- 1
![Cluster plot](error_class_plots/scimitar_memory_limit_1.png)

 * Number of instances: 3
 * Dataset ids: scaling_0456, scaling_0881, scaling_1133

Last 10 lines of scaling_0456:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal Traceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 2
![Cluster plot](error_class_plots/scimitar_memory_limit_2.png)

 * Number of instances: 4
 * Dataset ids: scaling_0476, scaling_0892, scaling_0985, scaling_0999

Last 10 lines of scaling_0476:
```
shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
    xb=bbox[0],xe=bbox[1],s=s)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 3
![Cluster plot](error_class_plots/scimitar_memory_limit_3.png)

 * Number of instances: 8
 * Dataset ids: scaling_0526, scaling_0538, scaling_0544, scaling_0770, scaling_0788, scaling_0806, scaling_0824, scaling_0842

Last 10 lines of scaling_0526:
```
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 396, in morphing_gaussian_from_embedding
g optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 246, in state_interpolation
    chol_funs[(j, i)] = lambda t, fun=spl: fun(t)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 4
![Cluster plot](error_class_plots/scimitar_memory_limit_4.png)

 * Number of instances: 29
 * Dataset ids: scaling_0556, scaling_0574, scaling_0602, scaling_0634, scaling_0650, scaling_0683, scaling_0700, scaling_0717, scaling_0734, scaling_0769, scaling_0787, scaling_0805, scaling_0823, scaling_0841, scaling_0912, scaling_0920, scaling_0928, scaling_0936, scaling_0944, scaling_0984, scaling_0998, scaling_1012, scaling_1026, scaling_1040, scaling_1056, scaling_1075, scaling_1094, scaling_1113, scaling_1132

Last 10 lines of scaling_0556:
```
rinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 396, in morphing_gaussian_from_embedding
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 202, in state_interpolation
    sorted_chols = np.array([np.linalg.cholesky(c).tolist() for c in sorted_covariances])
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 5
![Cluster plot](error_class_plots/scimitar_memory_limit_5.png)

 * Number of instances: 43
 * Dataset ids: scaling_0601, scaling_0617, scaling_0633, scaling_0649, scaling_0681, scaling_0682, scaling_0698, scaling_0699, scaling_0715, scaling_0716, scaling_0732, scaling_0733, scaling_0750, scaling_0767, scaling_0768, scaling_0785, scaling_0786, scaling_0803, scaling_0804, scaling_0821, scaling_0822, scaling_0839, scaling_0840, scaling_0857, scaling_0858, scaling_0868, scaling_0869, scaling_0879, scaling_0880, scaling_0890, scaling_0891, scaling_0901, scaling_0902, scaling_0983, scaling_0997, scaling_1011, scaling_1025, scaling_1039, scaling_1054, scaling_1073, scaling_1092, scaling_1111, scaling_1130

Last 10 lines of scaling_0601:
```
Traceback (most recent call last):
  File "/code/run.py", line 29, in <module>
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 396, in morphing_gaussian_from_embedding
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 309, in morphing_mixture_from_pseudotime
    covariances.append(np.copy(corpcor.cov_shrink(data_array, weights=weights, **{'lambda':cov_reg})))
  File "/usr/local/lib/python2.7/site-packages/pyroconductor/corpcor.py", line 13, in cov_shrink
    return np.array(res)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 6
![Cluster plot](error_class_plots/scimitar_memory_limit_6.png)

 * Number of instances: 4
 * Dataset ids: scaling_0603, scaling_1041, scaling_1076, scaling_1095

Last 10 lines of scaling_0603:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Traceback (most recent call last):
  File "/code/run.py", line 29, in <module>
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 396, in morphing_gaussian_from_embedding
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 7
![Cluster plot](error_class_plots/scimitar_memory_limit_7.png)

 * Number of instances: 2
 * Dataset ids: scaling_0619, scaling_0718

Last 10 lines of scaling_0619:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
EstiTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
mating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 175, in __init__
    if not all(diff(x) > 0.0):
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 8
![Cluster plot](error_class_plots/scimitar_memory_limit_8.png)

 * Number of instances: 1
 * Dataset ids: scaling_0651

Last 10 lines of scaling_0651:
```
EstiTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 175, in __init__
mating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    if not all(diff(x) > 0.0):
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 9
![Cluster plot](error_class_plots/scimitar_memory_limit_9.png)

 * Number of instances: 1
 * Dataset ids: scaling_0684

Last 10 lines of scaling_0684:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.2428 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
EstiTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
mating optimal shrinkage intensity lambda.var (variance vector): 0.2749 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
    xb=bbox[0],xe=bbox[1],s=s)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 10
![Cluster plot](error_class_plots/scimitar_memory_limit_10.png)

 * Number of instances: 1
 * Dataset ids: scaling_0701

Last 10 lines of scaling_0701:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.1494 
Specified shrinkage intensity lambda (correlation matrix): 0.05Traceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 175, in __init__
 
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.1378 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    if not all(diff(x) > 0.0):
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 11
![Cluster plot](error_class_plots/scimitar_memory_limit_11.png)

 * Number of instances: 3
 * Dataset ids: scaling_0735, scaling_1027, scaling_1114

Last 10 lines of scaling_0735:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
EstimTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
ating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    xb=bbox[0],xe=bbox[1],s=s)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 12
![Cluster plot](error_class_plots/scimitar_memory_limit_12.png)

 * Number of instances: 1
 * Dataset ids: scaling_0752

Last 10 lines of scaling_0752:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
EstimaTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
ting optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 13
![Cluster plot](error_class_plots/scimitar_memory_limit_13.png)

 * Number of instances: 33
 * Dataset ids: scaling_0766, scaling_0784, scaling_0802, scaling_0820, scaling_0856, scaling_0867, scaling_0878, scaling_0889, scaling_0911, scaling_0919, scaling_0927, scaling_0935, scaling_0943, scaling_0951, scaling_0957, scaling_0963, scaling_0969, scaling_0975, scaling_0982, scaling_0996, scaling_1010, scaling_1024, scaling_1038, scaling_1052, scaling_1053, scaling_1071, scaling_1072, scaling_1090, scaling_1091, scaling_1109, scaling_1110, scaling_1128, scaling_1129

Last 10 lines of scaling_0766:
```
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 309, in morphing_mixture_from_pseudotime
    covariances.append(np.copy(corpcor.cov_shrink(data_array, weights=weights, **{'lambda':cov_reg})))
  File "/usr/local/lib/python2.7/site-packages/pyroconductor/corpcor.py", line 12, in cov_shrink
    **kwargs)
  File "/usr/local/lib/python2.7/site-packages/rpy2/robjects/functions.py", line 178, in __call__
    return super(SignatureTranslatedFunction, self).__call__(*args, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/rpy2/robjects/functions.py", line 106, in __call__
    res = super(Function, self).__call__(*new_args, **new_kwargs)
rpy2.rinterface.RRuntimeError: Error: cannot allocate vector of size 4.7 Gb
```

### ERROR CLUSTER MEMORY_LIMIT -- 14
![Cluster plot](error_class_plots/scimitar_memory_limit_14.png)

 * Number of instances: 40
 * Dataset ids: scaling_0782, scaling_0800, scaling_0818, scaling_0836, scaling_0854, scaling_0864, scaling_0865, scaling_0875, scaling_0876, scaling_0886, scaling_0887, scaling_0897, scaling_0898, scaling_0908, scaling_0909, scaling_0955, scaling_0961, scaling_0967, scaling_0973, scaling_0979, scaling_0992, scaling_1006, scaling_1020, scaling_1034, scaling_1048, scaling_1064, scaling_1065, scaling_1066, scaling_1083, scaling_1084, scaling_1085, scaling_1102, scaling_1103, scaling_1104, scaling_1121, scaling_1122, scaling_1123, scaling_1140, scaling_1141, scaling_1142

Last 10 lines of scaling_0782:
```
    pseudotimes = embedding.fit_transform(denoised_data_array)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 678, in fit_transform
    self._fit_transform(X)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 645, in _fit_transform
    random_state=random_state, reg=self.reg, n_jobs=self.n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 310, in locally_linear_embedding
    nbrs, n_neighbors=n_neighbors, reg=reg, n_jobs=n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 103, in barycenter_kneighbors_graph
    data = barycenter_weights(X, X[ind], reg=reg)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 15
![Cluster plot](error_class_plots/scimitar_memory_limit_15.png)

 * Number of instances: 20
 * Dataset ids: scaling_0783, scaling_0801, scaling_0819, scaling_0837, scaling_0855, scaling_0918, scaling_0926, scaling_0934, scaling_0942, scaling_0950, scaling_0993, scaling_1007, scaling_1021, scaling_1035, scaling_1049, scaling_1067, scaling_1086, scaling_1105, scaling_1124, scaling_1143

Last 10 lines of scaling_0783:
```
    self._fit_transform(X)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 645, in _fit_transform
    random_state=random_state, reg=self.reg, n_jobs=self.n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 310, in locally_linear_embedding
    nbrs, n_neighbors=n_neighbors, reg=reg, n_jobs=n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 102, in barycenter_kneighbors_graph
    ind = knn.kneighbors(X, return_distance=False)[:, 1:]
  File "/usr/local/lib/python2.7/site-packages/sklearn/neighbors/base.py", line 367, in kneighbors
    sample_range, np.argsort(dist[sample_range, neigh_ind])]
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 16
![Cluster plot](error_class_plots/scimitar_memory_limit_16.png)

 * Number of instances: 1
 * Dataset ids: scaling_0859

Last 10 lines of scaling_0859:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
EstimatingTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 175, in __init__
    if not all(diff(x) > 0.0):
  File "/usr/local/lib/python2.7/site-packages/numpy/lib/function_base.py", line 1174, in diff
 optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    a = op(a[slice1], a[slice2])
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 17
![Cluster plot](error_class_plots/scimitar_memory_limit_17.png)

 * Number of instances: 15
 * Dataset ids: scaling_0866, scaling_0877, scaling_0888, scaling_0899, scaling_0910, scaling_0956, scaling_0962, scaling_0968, scaling_0974, scaling_0980, scaling_1068, scaling_1087, scaling_1106, scaling_1125, scaling_1144

Last 10 lines of scaling_0866:
```
    n_jobs=n_jobs, squared=True)
  File "/usr/local/lib/python2.7/site-packages/sklearn/metrics/pairwise.py", line 1247, in pairwise_distances
    return _parallel_pairwise(X, Y, func, n_jobs, **kwds)
  File "/usr/local/lib/python2.7/site-packages/sklearn/metrics/pairwise.py", line 1090, in _parallel_pairwise
    return func(X, Y, **kwds)
  File "/usr/local/lib/python2.7/site-packages/sklearn/metrics/pairwise.py", line 246, in euclidean_distances
    distances = safe_sparse_dot(X, Y.T, dense_output=True)
  File "/usr/local/lib/python2.7/site-packages/sklearn/utils/extmath.py", line 140, in safe_sparse_dot
    return np.dot(a, b)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 18
![Cluster plot](error_class_plots/scimitar_memory_limit_18.png)

 * Number of instances: 1
 * Dataset ids: scaling_0870

Last 10 lines of scaling_0870:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0656 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0582 
Specified shrinkage intensity lambda (correlation Traceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 245, in state_interpolation
matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0667 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    spl = UnivariateSpline(timepoints, sorted_chols[:, j, i], k=degree)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 19
![Cluster plot](error_class_plots/scimitar_memory_limit_19.png)

 * Number of instances: 2
 * Dataset ids: scaling_0903, scaling_1057

Last 10 lines of scaling_0903:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.2613 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.309 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimTraceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/numpy/core/numeric.py", line 553, in asanyarray
al shrinkage intensity lambda.var (variance vector): 0.375 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    return array(a, dtype, copy=False, order=order, subok=True)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 20
![Cluster plot](error_class_plots/scimitar_memory_limit_20.png)

 * Number of instances: 10
 * Dataset ids: scaling_0952, scaling_0958, scaling_0964, scaling_0970, scaling_0976, scaling_1055, scaling_1074, scaling_1093, scaling_1112, scaling_1131

Last 10 lines of scaling_0952:
```
Traceback (most recent call last):
  File "/code/run.py", line 29, in <module>
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 396, in morphing_gaussian_from_embedding
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 309, in morphing_mixture_from_pseudotime
    covariances.append(np.copy(corpcor.cov_shrink(data_array, weights=weights, **{'lambda':cov_reg})))
  File "/usr/local/lib/python2.7/site-packages/numpy/lib/function_base.py", line 733, in copy
    return array(a, order=order, copy=True)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 21
![Cluster plot](error_class_plots/scimitar_memory_limit_21.png)

 * Number of instances: 18
 * Dataset ids: scaling_0981, scaling_0994, scaling_0995, scaling_1008, scaling_1009, scaling_1022, scaling_1023, scaling_1036, scaling_1050, scaling_1051, scaling_1069, scaling_1070, scaling_1088, scaling_1089, scaling_1107, scaling_1108, scaling_1126, scaling_1145

Last 10 lines of scaling_0981:
```
Traceback (most recent call last):
  File "/code/run.py", line 29, in <module>
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 394, in morphing_gaussian_from_embedding
    pseudotimes = pseudotimes_from_embedding(data_array, n_neighbors=n_neighbors)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 403, in pseudotimes_from_embedding
    u, s, v = np.linalg.svd(data_array, full_matrices=1)
  File "/usr/local/lib/python2.7/site-packages/numpy/linalg/linalg.py", line 1562, in svd
    u, s, vh = gufunc(a, signature=signature, extobj=extobj)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 22
![Cluster plot](error_class_plots/scimitar_memory_limit_22.png)

 * Number of instances: 5
 * Dataset ids: scaling_0991, scaling_1005, scaling_1019, scaling_1033, scaling_1047

Last 10 lines of scaling_0991:
```
    self._fit_transform(X)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 645, in _fit_transform
    random_state=random_state, reg=self.reg, n_jobs=self.n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 310, in locally_linear_embedding
    nbrs, n_neighbors=n_neighbors, reg=reg, n_jobs=n_jobs)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 103, in barycenter_kneighbors_graph
    data = barycenter_weights(X, X[ind], reg=reg)
  File "/usr/local/lib/python2.7/site-packages/sklearn/manifold/locally_linear.py", line 48, in barycenter_weights
    B = np.empty((n_samples, n_neighbors), dtype=X.dtype)
MemoryError
```

### ERROR CLUSTER MEMORY_LIMIT -- 23
![Cluster plot](error_class_plots/scimitar_memory_limit_23.png)

 * Number of instances: 1
 * Dataset ids: scaling_1013

Last 10 lines of scaling_1013:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.0808 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.1017 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal Traceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
shrinkage intensity lambda.var (variance vector): 0.1621 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    xb=bbox[0],xe=bbox[1],s=s)
MemoryError
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1
![Cluster plot](error_class_plots/scimitar_method_error_1.png)

 * Number of instances: 121
 * Dataset ids: scaling_0001, scaling_0003, scaling_0004, scaling_0006, scaling_0012, scaling_0016, scaling_0022, scaling_0025, scaling_0026, scaling_0027, scaling_0031, scaling_0035, scaling_0037, scaling_0038, scaling_0041, scaling_0045, scaling_0048, scaling_0051, scaling_0052, scaling_0053, scaling_0061, scaling_0062, scaling_0063, scaling_0067, scaling_0068, scaling_0070, scaling_0076, scaling_0077, scaling_0078, scaling_0079, scaling_0088, scaling_0089, scaling_0090, scaling_0091, scaling_0096, scaling_0098, scaling_0103, scaling_0105, scaling_0107, scaling_0108, scaling_0109, scaling_0121, scaling_0122, scaling_0123, scaling_0129, scaling_0130, scaling_0131, scaling_0132, scaling_0137, scaling_0141, scaling_0145, scaling_0148, scaling_0151, scaling_0153, scaling_0154, scaling_0165, scaling_0166, scaling_0171, scaling_0178, scaling_0180, scaling_0182, scaling_0183, scaling_0184, scaling_0185, scaling_0196, scaling_0197, scaling_0198, scaling_0199, scaling_0206, scaling_0212, scaling_0228, scaling_0229, scaling_0232, scaling_0241, scaling_0255, scaling_0256, scaling_0257, scaling_0264, scaling_0265, scaling_0270, scaling_0273, scaling_0278, scaling_0279, scaling_0287, scaling_0300, scaling_0301, scaling_0315, scaling_0316, scaling_0331, scaling_0335, scaling_0351, scaling_0377, scaling_0378, scaling_0395, scaling_0404, scaling_0421, scaling_0438, scaling_0439, scaling_0466, scaling_0491, scaling_0492, scaling_0495, scaling_0507, scaling_0547, scaling_0548, scaling_0565, scaling_0598, scaling_0618, scaling_0658, scaling_0659, scaling_0671, scaling_0672, scaling_0742, scaling_0758, scaling_0760, scaling_0830, scaling_0831, scaling_0847, scaling_0883, scaling_0905, scaling_1062

Last 10 lines of scaling_0001:
```
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 309, in morphing_mixture_from_pseudotime
    covariances.append(np.copy(corpcor.cov_shrink(data_array, weights=weights, **{'lambda':cov_reg})))
  File "/usr/local/lib/python2.7/site-packages/pyroconductor/corpcor.py", line 12, in cov_shrink
    **kwargs)
  File "/usr/local/lib/python2.7/site-packages/rpy2/robjects/functions.py", line 178, in __call__
    return super(SignatureTranslatedFunction, self).__call__(*args, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/rpy2/robjects/functions.py", line 106, in __call__
    res = super(Function, self).__call__(*new_args, **new_kwargs)
rpy2.rinterface.RRuntimeError: Error in if (denominator == 0) lambda.var = 1 else lambda.var = max(0,  : 
  missing value where TRUE/FALSE needed
```

### ERROR CLUSTER METHOD_ERROR -- 2
![Cluster plot](error_class_plots/scimitar_method_error_2.png)

 * Number of instances: 120
 * Dataset ids: scaling_0010, scaling_0015, scaling_0030, scaling_0032, scaling_0036, scaling_0039, scaling_0047, scaling_0050, scaling_0064, scaling_0066, scaling_0069, scaling_0072, scaling_0074, scaling_0094, scaling_0095, scaling_0097, scaling_0101, scaling_0102, scaling_0106, scaling_0124, scaling_0128, scaling_0135, scaling_0138, scaling_0139, scaling_0140, scaling_0149, scaling_0172, scaling_0176, scaling_0179, scaling_0181, scaling_0195, scaling_0202, scaling_0210, scaling_0211, scaling_0213, scaling_0222, scaling_0224, scaling_0226, scaling_0238, scaling_0240, scaling_0247, scaling_0251, scaling_0272, scaling_0275, scaling_0280, scaling_0281, scaling_0302, scaling_0303, scaling_0321, scaling_0322, scaling_0324, scaling_0329, scaling_0343, scaling_0344, scaling_0345, scaling_0346, scaling_0363, scaling_0364, scaling_0365, scaling_0366, scaling_0376, scaling_0382, scaling_0385, scaling_0393, scaling_0394, scaling_0397, scaling_0417, scaling_0423, scaling_0430, scaling_0444, scaling_0445, scaling_0459, scaling_0461, scaling_0479, scaling_0486, scaling_0493, scaling_0497, scaling_0508, scaling_0516, scaling_0522, scaling_0527, scaling_0532, scaling_0539, scaling_0550, scaling_0555, scaling_0578, scaling_0583, scaling_0587, scaling_0588, scaling_0593, scaling_0595, scaling_0609, scaling_0635, scaling_0660, scaling_0666, scaling_0667, scaling_0719, scaling_0741, scaling_0743, scaling_0744, scaling_0751, scaling_0757, scaling_0832, scaling_0833, scaling_0846, scaling_0851, scaling_0895, scaling_0896, scaling_0906, scaling_0939, scaling_0940, scaling_1030, scaling_1031, scaling_1032, scaling_1044, scaling_1045, scaling_1099, scaling_1118, scaling_1119, scaling_1120

Last 10 lines of scaling_0010:
```
    pseudotimes, cov_estimator=cov_estimator, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 202, in state_interpolation
    sorted_chols = np.array([np.linalg.cholesky(c).tolist() for c in sorted_covariances])
  File "/usr/local/lib/python2.7/site-packages/numpy/linalg/linalg.py", line 733, in cholesky
    r = gufunc(a, signature=signature, extobj=extobj)
  File "/usr/local/lib/python2.7/site-packages/numpy/linalg/linalg.py", line 92, in _raise_linalgerror_nonposdef
    raise LinAlgError("Matrix is not positive definite")
numpy.linalg.linalg.LinAlgError: Matrix is not positive definite
```

### ERROR CLUSTER METHOD_ERROR -- 3
![Cluster plot](error_class_plots/scimitar_method_error_3.png)

 * Number of instances: 79
 * Dataset ids: scaling_0040, scaling_0073, scaling_0127, scaling_0136, scaling_0150, scaling_0152, scaling_0164, scaling_0169, scaling_0170, scaling_0203, scaling_0204, scaling_0205, scaling_0245, scaling_0253, scaling_0254, scaling_0268, scaling_0274, scaling_0299, scaling_0304, scaling_0310, scaling_0311, scaling_0312, scaling_0313, scaling_0314, scaling_0337, scaling_0339, scaling_0372, scaling_0383, scaling_0384, scaling_0386, scaling_0387, scaling_0420, scaling_0432, scaling_0433, scaling_0434, scaling_0435, scaling_0436, scaling_0449, scaling_0460, scaling_0488, scaling_0489, scaling_0490, scaling_0499, scaling_0500, scaling_0501, scaling_0503, scaling_0519, scaling_0520, scaling_0528, scaling_0540, scaling_0546, scaling_0551, scaling_0552, scaling_0606, scaling_0608, scaling_0638, scaling_0654, scaling_0655, scaling_0657, scaling_0670, scaling_0673, scaling_0674, scaling_0675, scaling_0723, scaling_0738, scaling_0740, scaling_0755, scaling_0774, scaling_0775, scaling_0848, scaling_0849, scaling_0850, scaling_0862, scaling_0884, scaling_0915, scaling_0931, scaling_0978, scaling_0989, scaling_1017

Last 10 lines of scaling_0040:
```
    cov_reg=p["cov_reg"]
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 125, in refine
    fit_type=self.fit_type, degree=self.degree, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 221, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_means[:, i], k=degree, w=sorted_covariances[:, i, i])
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
    xb=bbox[0],xe=bbox[1],s=s)
dfitpack.error: (m>k) failed for hidden m: fpcurf0:m=3
```

### ERROR CLUSTER METHOD_ERROR -- 4
![Cluster plot](error_class_plots/scimitar_method_error_4.png)

 * Number of instances: 1
 * Dataset ids: scaling_0163

Last 10 lines of scaling_0163:
```
Initializing
Iteration 0
Estimating optimal shrinkage intensity lambda.var (variance vector): 0.8766 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
    xb=bbox[0],xe=bbox[1],s=s)
dfitpack.error: (m>k) failed for hidden m: fpcurf0:m=3
```

### ERROR CLUSTER METHOD_ERROR -- 5
![Cluster plot](error_class_plots/scimitar_method_error_5.png)

 * Number of instances: 1
 * Dataset ids: scaling_0323

Last 10 lines of scaling_0323:
```
Estimating optimal shrinkage intensity lambda.var (variance vector): 1 
Specified shrinkage in    fit_type=self.fit_type, degree=self.degree, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 221, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_means[:, i], k=degree, w=sorted_covariances[:, i, i])
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
    xb=bbox[0],xe=bbox[1],s=s)
dfitpack.error: (m>k) failed for hidden m: fpcurf0:m=2
tensity lambda (correlation matrix): 0.05 
```

### ERROR CLUSTER METHOD_ERROR -- 6
![Cluster plot](error_class_plots/scimitar_method_error_6.png)

 * Number of instances: 1
 * Dataset ids: scaling_0894

Last 10 lines of scaling_0894:
```
Estimating optimal shrinkage intensity lambda.var (variance vect    fit_type=self.fit_type, degree=self.degree, **kwargs)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 325, in morphing_mixture_from_pseudotime
    timepoints=timepoints)
  File "/usr/local/lib/python2.7/site-packages/scimitar/morphing_mixture.py", line 221, in state_interpolation
    spl = UnivariateSpline(timepoints, sorted_means[:, i], k=degree, w=sorted_covariances[:, i, i])
  File "/usr/local/lib/python2.7/site-packages/scipy/interpolate/fitpack2.py", line 185, in __init__
    xb=bbox[0],xe=bbox[1],s=s)
dfitpack.error: (m>k) failed for hidden m: fpcurf0:m=3
or): 0.0432 
Specified shrinkage intensity lambda (correlation matrix): 0.05 
```

## ERROR STATUS TIME_LIMIT

### ERROR CLUSTER TIME_LIMIT -- 1
![Cluster plot](error_class_plots/scimitar_time_limit_1.png)

 * Number of instances: 191
 * Dataset ids: scaling_0244, scaling_0276, scaling_0277, scaling_0298, scaling_0309, scaling_0341, scaling_0342, scaling_0352, scaling_0361, scaling_0362, scaling_0371, scaling_0391, scaling_0392, scaling_0405, scaling_0406, scaling_0407, scaling_0418, scaling_0419, scaling_0431, scaling_0446, scaling_0457, scaling_0458, scaling_0467, scaling_0468, scaling_0477, scaling_0478, scaling_0487, scaling_0498, scaling_0506, scaling_0510, scaling_0514, scaling_0518, scaling_0533, scaling_0534, scaling_0545, scaling_0557, scaling_0558, scaling_0564, scaling_0566, scaling_0567, scaling_0573, scaling_0575, scaling_0576, scaling_0582, scaling_0584, scaling_0585, scaling_0591, scaling_0594, scaling_0600, scaling_0604, scaling_0605, scaling_0607, scaling_0615, scaling_0616, scaling_0620, scaling_0621, scaling_0622, scaling_0623, scaling_0631, scaling_0632, scaling_0636, scaling_0637, scaling_0639, scaling_0647, scaling_0648, scaling_0652, scaling_0653, scaling_0663, scaling_0664, scaling_0668, scaling_0669, scaling_0679, scaling_0680, scaling_0685, scaling_0686, scaling_0687, scaling_0688, scaling_0695, scaling_0696, scaling_0697, scaling_0702, scaling_0703, scaling_0704, scaling_0705, scaling_0712, scaling_0713, scaling_0714, scaling_0720, scaling_0721, scaling_0722, scaling_0729, scaling_0730, scaling_0731, scaling_0736, scaling_0737, scaling_0739, scaling_0746, scaling_0747, scaling_0748, scaling_0753, scaling_0754, scaling_0756, scaling_0763, scaling_0764, scaling_0765, scaling_0771, scaling_0772, scaling_0773, scaling_0780, scaling_0781, scaling_0789, scaling_0790, scaling_0791, scaling_0798, scaling_0799, scaling_0807, scaling_0808, scaling_0809, scaling_0810, scaling_0816, scaling_0817, scaling_0825, scaling_0826, scaling_0827, scaling_0828, scaling_0834, scaling_0835, scaling_0843, scaling_0844, scaling_0845, scaling_0852, scaling_0853, scaling_0860, scaling_0861, scaling_0871, scaling_0872, scaling_0882, scaling_0893, scaling_0904, scaling_0913, scaling_0914, scaling_0917, scaling_0921, scaling_0922, scaling_0925, scaling_0929, scaling_0930, scaling_0933, scaling_0937, scaling_0938, scaling_0941, scaling_0945, scaling_0946, scaling_0949, scaling_0953, scaling_0954, scaling_0959, scaling_0960, scaling_0965, scaling_0966, scaling_0971, scaling_0972, scaling_0977, scaling_0986, scaling_0987, scaling_1000, scaling_1001, scaling_1014, scaling_1015, scaling_1028, scaling_1029, scaling_1042, scaling_1043, scaling_1058, scaling_1059, scaling_1060, scaling_1061, scaling_1077, scaling_1078, scaling_1079, scaling_1080, scaling_1096, scaling_1097, scaling_1098, scaling_1115, scaling_1116, scaling_1117, scaling_1134, scaling_1135, scaling_1136, scaling_1137

Last 10 lines of scaling_0244:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/scimitar/Cat1/r2gridengine/20181008_142132_scimitar_Cat1_eiguC91mXg/log/log.244.e.txt
```


