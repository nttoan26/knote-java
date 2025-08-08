FROM eclipse-temurin:17.0.16_8-jre-ubi9-minimal
ENV PORT 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
