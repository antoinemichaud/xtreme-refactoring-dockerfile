FROM java:8
EXPOSE 8080
COPY target/xtreme-refactoring-?.?.?.jar /usr/src/xtreme-refactoring/xtreme-refactoring.jar
WORKDIR /usr/src/xtreme-refactoring
CMD /bin/bash