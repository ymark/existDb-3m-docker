FROM davidgaya/existdb:latest

# Version 2.0 

MAINTAINER Yannis Marketakis

RUN sed -i 's/8080/8081/g' /opt/exist/tools/jetty/etc/jetty.xml \
	&& sed -i 's/8080/8081/g' /opt/exist/client.properties \
	&& sed -i 's/8080/8081/g' /opt/exist/backup.properties \
	&& sed -i 's/8080/8081/g' /opt/exist/index.html

ADD entrypoint.sh /entrypoint.sh
ENV EXIST_HOME /opt/exist
VOLUME /opt/exist/webapp/WEB-INF/data/

COPY Resources/3M /3M
RUN mkdir -p /3M/rdf_visualizer_files \
        && mkdir -p /3M/BackUp

ADD Resources/data.tar.gz /opt/exist/webapp/WEB-INF/

EXPOSE 8081

ENTRYPOINT ["/entrypoint.sh"]a

