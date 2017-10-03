FROM davidgaya/existdb:latest

# Version 2.1

MAINTAINER Yannis Marketakis

ADD entrypoint.sh /entrypoint.sh
VOLUME /opt/exist/webapp/WEB-INF/data/

COPY Resources/3M /3M

ADD Resources/data.tar.gz /opt/exist/webapp/WEB-INF/

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
