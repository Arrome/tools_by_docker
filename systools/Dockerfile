FROM centos:7

LABEL manitainer Arrome

#环境准备
RUN curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    yum install -y git make gcc

#http压测工具ab,wrk(lua自定义)
RUN git clone https://github.com/wg/wrk && cd wrk && make && \
    mv wrk /usr/local/bin && cd .. && rm -rf wrk && \
    yum install -y httpd-tools

#网络相关工具(默认已有netstat|nslookup|dig)
#安全审计、防火墙测试，可定制数据包各个部分（hping3）
#net-tools(arp/route/ifconfig/netstat)
#iproute
RUN yum install -y hping3 tcpdump iperf3 traceroute && \
    yum install -y iproute net-tools bridge-utils && \
    yum install -y nmap-ncat

#内存相关工具cachestat|cachetop|pcstat

##诊断调试用户空间跟踪器
RUN yum install -y strace && \        
    yum clean all
