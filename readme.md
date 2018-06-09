
# Oracle 12c Release 1

仅限学习使用

基于sath89/oracle-12c修改的Oracle 12c镜像。
解决创建数据库时无法自定义Oracle SID的问题。

### 生成镜像

<pre>
docker build -t oracle-12c ./
</pre>

### 创建数据卷

<pre>
docker volume create --name oracle-data
</pre>

### 创建容器

<pre>
docker create --name oracle -p 8080:8080 -p 1521:1521 -v oracle-data:/u01/app/oracle -e ORACLE_SID=orcl oracle-12c
</pre>

### 启动容器

<pre>
docker start oracle
</pre>

### 连接信息

        hostname: localhost
        port: 1521
        sid: orcl
        service name: orcl
        username: system
        password: oracle

        sqlplus system/oracle@//localhost:1521/orcl

### Connect to Oracle Enterprise Management console

        http://localhost:8080/em
        user: sys
        password: oracle
        connect as sysdba: true

更多信息请参照: https://github.com/MaksymBilenko/docker-oracle-12c
