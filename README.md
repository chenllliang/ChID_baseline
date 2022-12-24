# ChID_19
计算语言学22-23学年秋季学期课程大作业19组实现代码实现


## requirements
```
accelerate==0.7.1
allennlp==2.9.1
datasets==2.5.1
evaluate==0.2.2
huggingface_hub==0.10.0
numpy==1.22.3
torch==1.11.0
tqdm==4.56.0
transformers==4.16.2
```

## usage

请首先参考(https://github.com/Zce1112zslx/ChID_baseline)下载数据集

训练
```
bash run_ours.sh # 修改train_file,validation_file,test_file 的路径为你的路径
```

测试

```
bash test_ours.sh # 修改train_file,validation_file,test_file 的路径为你的路径
```


