FROM lsiobase/alpine.nginx
MAINTAINER Stian Larsen, sparklyballs

# install packages
RUN \
 apk add --no-cache \
	php5-mysql \
  php5-mcrypt \
  php5-curl \
  php5-gd \
  php5-cgi \
  php5-pgsql \
  php5-memcache \
  php5-sqlite3 \
  memcached && \

# add local files
COPY root/ /

# Volumes and Ports
VOLUME /config
EXPOSE 80 443
