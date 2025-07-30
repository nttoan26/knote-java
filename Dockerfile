FROM adoptopenjdk/openjdk11:jdk-11.0.27_6-slim
ENV PORT 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
