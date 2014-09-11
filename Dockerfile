FROM    ubuntu:14.04
MAINTAINER Saravana Kumar Periyasamy <saravanakumar.periyasamy@gmail.com>

RUN     apt-get update
RUN     apt-get install -y apache2
CMD     service apache2 start && tail -f /var/log/apache2/error.log