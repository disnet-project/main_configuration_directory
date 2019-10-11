FROM ubuntu:xenial-20170710

RUN apt-get update && \
	apt-get install -y vim && \
	apt-get install -y openjdk-8-jdk && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;
	
# Fix certificate issues, found as of 
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/983302
RUN apt-get update && \
	apt-get install -y ca-certificates-java && \
	apt-get clean && \
	update-ca-certificates -f && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME


# Metamap initialize
RUN mkdir -p /home/metamap
ADD zip/public_mm_linux_main_2016v2.tar.bz2 /home/metamap
ADD zip/public_mm_wsd_2014.tar.bz2 /home/metamap
ADD zip/public_mm_linux_javaapi_2016v2.tar.bz2 /home/metamap

ENV PATH "$PATH:/home/metamap/public_mm/bin"
RUN export PATH

WORKDIR /home/metamap/public_mm
RUN ./bin/install.sh 

WORKDIR /home/metamap/public_mm/bin
ADD accepted_hosts/mmserver16 /home/metamap/public_mm/bin

WORKDIR /home/metamap/public_mm
COPY entrypoint/docker-entrypoint.sh /home/metamap/public_mm
RUN ln -s /home/metamap/public_mm/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["/docker-entrypoint.sh"]

#WORKDIR /home/metamap/public_mm
#RUN ./bin/skrmedpostctl start \
#    && ./bin/wsdserverctl start \
#    && sleep 60 \
#    && ./bin/mmserver16







