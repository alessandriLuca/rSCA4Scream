source("runDocker.R")
source("deepCL_GPU.R")
scratch.folder=getwd()
file=paste(scratch.folder,"setA.csv",sep="/")
separator=","
bias="TF"
permutation=40
nEpochs=1000
projectName="Test_CPU"
nCluster=3
deepClusteringGPU(group=c("docker"), scratch.folder=scratch.folder, file=file,separator=separator,nCluster=nCluster, bias=bias, finetune_iters=10, nEpochs=5,projectName=projectName,bN="NULL")
