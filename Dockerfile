FROM daocloud.io/ubuntu:12.04
MAINTAINER Fang Liang <hustnaive@me.com>

#使用国内镜像源以加速
ADD sources.list.precise /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y build-essential autoconf bison libxml2-dev libelf-dev

ADD php-src /tmp/php-src
WORKDIR /tmp/php-src
RUN /tmp/php-src/buildconf --force
RUN /tmp/php-src/configure
RUN make && make install

