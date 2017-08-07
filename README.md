# node_docker
一个自用的nodejs的docker模版

# 编译
`docker build -t node-app .`

# 创建共享卷
```docker create --name vc_data \
-v /var/lib/docker/data-disk/app:/app \
-v /var/lib/docker/data-disk/logs:/logs \
busybox
```
# 使用
指定使用volumes-from 
设置APP环境变量

`docker run --name ckdown --volumes-from=vc_data -d --restart=always -e APP=checkdownload node-app `
