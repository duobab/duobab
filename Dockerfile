FROM openjdk:8-jre-buster

# 声明维护人员联系方式
LABEL maintainer="duobab.com"

# jar文件保存及后续命令执行的根目录
WORKDIR /server

# 添加jar文件到/server目录
ADD target/java-test-1.0.jar .

# 预制环境变量
ENV JAVA_OPTS=""

# 暴露服务端口
EXPOSE 8080

# 程序启动命令
ENTRYPOINT [ "sh", "-c", "java ${JAVA_OPTS} -jar /server/java-test-1.0.jar" ]

