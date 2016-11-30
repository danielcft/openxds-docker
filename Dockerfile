FROM java:7
RUN apt-get -y update && apt-get install -y maven
ADD openxds /data/openxds
ADD openxds/m2repo /usr/share/maven-repo
CMD cd /data/openxds/ && mvn clean install -DskipTests
RUN /bin/bash
