FROM openjdk:11
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom ${JAVA_OPTS} -jar /app.jar ${0} ${@}"]