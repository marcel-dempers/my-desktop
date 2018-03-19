FROM ubuntu:trusty

# Install wger & JRE & required packages
RUN apt-get clean && \
	apt-get update && \
	apt-get -qy install --no-install-recommends \
				wget \
			    software-properties-common \
				iputils-ping \
				unzip  && \
				add-apt-repository ppa:openjdk-r/ppa && \
				apt-get update && apt-get install -qy  openjdk-8-jre

				#default-jre-headless 
				
# Install jmeter
RUN   mkdir /jmeter \
      && cd /jmeter/ \
      && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-4.0.tgz \
      && tar -xzf apache-jmeter-4.0.tgz \
      && rm apache-jmeter-4.0.tgz

# Set Jmeter Home
ENV JMETER_HOME /jmeter/apache-jmeter-4.0/
WORKDIR /jmeter/apache-jmeter-4.0/

COPY user.properties /jmeter/apache-jmeter-4.0/bin/

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH

# Folder to mount in tests
RUN mkdir -p /usr/lib/src/

EXPOSE 60000 1099

ENTRYPOINT ["/jmeter/apache-jmeter-4.0/bin/jmeter"]