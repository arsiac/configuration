## MySQL
```shell
mkdir -p ~/.docker/mysql/conf ~/.docker/mysql/logs ~/.docker/mysql/data

docker run -d --name mysql-5.7 \                                                                [3:57:09]
-e MYSQL_ROOT_PASSWORD=123456 \ 
-p 3306:3306 \       
-v ~/.docker/mysql/conf:/etc/mysql \
-v ~/.docker/mysql/logs:/var/log/mysql \
-v ~/.docker/mysql/data:/var/lib/mysql \
mysql:5.7

```
