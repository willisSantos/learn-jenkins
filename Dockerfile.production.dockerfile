FROM maven:3.6.3-openjdk-11 as maven

WORKDIR /usr/src/project_name

COPY target/demo.jar .

CMD ["java", "-jar", "demo.jar"]
