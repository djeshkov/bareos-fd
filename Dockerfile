FROM shoifele/bone-centos

MAINTAINER Dan Jeshkov <d.jeshkov@gmail.com>

ENV REFRESHED_AT="2016-08-18" \
    BAREOS_FD_CONF_FILE=bareos-fd.conf

RUN curl -Ls http://download.bareos.org/bareos/release/latest/CentOS_7/bareos.repo \
    > /etc/yum.repos.d/bareos.repo \
  && yum -y install \
    bareos-client \
    sshfs \
    cifs-utils \
  && yum clean all

ADD rootfs /

EXPOSE 9102
VOLUME /etc/bareos

CMD ["/init"]
