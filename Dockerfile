FROM eclipse-temurin:21.0.3_9-jre-alpine
ENV PORT 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
