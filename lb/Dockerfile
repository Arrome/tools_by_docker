FROM centos:7

LABEL manitainer Arrome

#环境准备
#删除yum tsflags=nodocs参数(为减小镜像包大小禁用了man，需要开启)，安装使用man命令
RUN curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    sed -i /^tsflags=nodocs/d /etc/yum.conf && \
    yum install -y man less
    
COPY ["entry/","/"]

RUN yum install -y ipvsadm && \
    yum clean headers && \
    yum clean all
