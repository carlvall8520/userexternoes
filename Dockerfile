FROM openjdk:11
VOLUME /tmp
ADD userinternoes-1.0.0.jar userinternoes-1.0.0.jar
EXPOSE 8199
CMD ["java", "-Djava.security.egd=file:/dev/.urandom", "-Duser.timezone=EC", "-jar", "userinternoes-1.0.0.jar"]


