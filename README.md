# geth-pbft
1、docker-compose.yaml用于实现开启四个geth-pbtf节点。

2、password里存放的是各个账户的密码。

3、modify.py用于实现修改配置文件core.yaml的路径。（最后没有用到，因为一个docker容器相当于一台主机，他们的ROCKSDB存储路径不会重复）

4、pathh.env用于存放环境变量。

5、Dockerfile实现的功能是生成能够在开启容器之时一个运行modify.py脚本的镜像。（后来也没有用到）
