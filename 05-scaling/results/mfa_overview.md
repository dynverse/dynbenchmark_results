# mfa
![Overview](mfa.svg)

## ERROR STATUS EXECUTION_ERROR

### ERROR CLUSTER EXECUTION_ERROR -- 1

 * Number of instances: 20
 * Dataset ids: scaling_0005, scaling_0014, scaling_0028, scaling_0049, scaling_0071, scaling_0100, scaling_0134, scaling_0175, scaling_0209, scaling_0250, scaling_0320, scaling_0381, scaling_0443, scaling_0496, scaling_0592, scaling_0665, scaling_0749, scaling_0838, scaling_0900, scaling_1037

Last 10 lines of scaling_0005:
```
File: /home/rcannood/Workspace/dynverse/dynbenchmark//derived/05-scaling/suite/mfa/10/r2gridengine/20180825_051122_mfa_10_93dMVMExRw/log/log.5.e.txt
Calls: lapply ... do.call -> <Anonymous> -> <Anonymous> -> readRDS -> gzfile
In addition: Warning message:
In gzfile(file, "rb") :
  cannot open compressed file '/group/irc/shared/dynverse/dynbenchmark//derived/05-scaling/dataset/scaling_0005.rds', probable reason 'No such file or directory'
Execution halted
```

## ERROR STATUS METHOD_ERROR

### ERROR CLUSTER METHOD_ERROR -- 1

 * Number of instances: 1
 * Dataset ids: scaling_0357

Last 10 lines of scaling_0357:
```
Input saved to /data/tmp//RtmpPuW7Zz/file87b32917c89/ti/input: 
	data.rds
	params.json
Running singularity exec --pwd /ti/workspace -B \
  '/data/tmp//RtmpPuW7Zz/file87b32917c89/ti:/ti,/data/tmp//RtmpPuW7Zz/file87b350b6d878/tmp:/tmp2' \
  /group/irc/shared/dynverse/dynbenchmark/derived/03-method_characterisation/singularity_images/dynverse/mfa.simg \
  /code/run.sh
[91mERROR  : Home directory is not owned by calling user: /home/robrechtc
[0m[31mABORT  : Retval = 255
[0m
```


