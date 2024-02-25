FROM openjdk
LABEL maintainer = "msarunp@hub.docker.com"
EXPOSE 9095
WORKDIR /app
COPY target/jenkin-demo.jar app/jenkin-demo.jar
ENTRYPOINT ["java", "-jar", "jenkin-demo.jar"]