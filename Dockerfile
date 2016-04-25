FROM shoifele/bone-centos

MAINTAINER Christoph Wiechert <wio@psitrax.de>

ENV REFRESHED_AT="2016-04-20"

RUN curl -Ls http://download.bareos.org/bareos/release/latest/CentOS_7/bareos.repo \
    > /etc/yum.repos.d/bareos.repo \
  && yum -y install \
    bareos-storage \
    sshfs \
    cifs-utils \
  && yum clean all

ADD rootfs /

EXPOSE 9103
VOLUME /storage
VOLUME /etc/bareos

CMD ["/init"]
