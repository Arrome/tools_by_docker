FROM centos:7

LABEL manitainer Arrome

#环境准备
RUN curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    yum install -y git make gcc

#网络相关工具(默认已有netstat|nslookup|dig)
#安全审计、防火墙测试，可定制数据包各个部分（hping3）
#http压测工具ab
#http压测工具wrk，lua自定义
RUN yum install -y bridge-utils iproute hping3 tcpdump iperf3 httpd-tools && \   
    git clone https://github.com/wg/wrk && cd wrk && make && \
    mv wrk /usr/local/bin && cd .. && rm -rf wrk

#内存相关工具cachestat|cachetop|pcstat

##诊断调试用户空间跟踪器
RUN yum install -y strace && \        
    yum clean all
