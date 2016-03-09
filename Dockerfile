FROM java:8
EXPOSE 8080
RUN apt-get update && apt-get upgrade -y && apt-get install -y vim less
COPY target/xtreme-refactoring-?.?.?.jar /usr/src/xtreme-refactoring/xtreme-refactoring.jar
WORKDIR /usr/src/xtreme-refactoring
CMD /bin/bash