#Build Java Project using maven build tool.. Pulling maven image from DockerHub.
FROM maven as build

#Creating Project Directory.
WORKDIR /project

#Copy file content to docker container.
COPY . /project/

#clean target folder and build.
RUN mvn package -Dmaven.test.skip=true

#FROM tomcat
#COPY --from=build /project/target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps