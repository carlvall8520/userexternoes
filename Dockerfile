FROM openjdk:11
RUN mkdir /usr/bin/userinternoes
COPY /target/userinternoes-1.0.0.jar /usr/src/userinternoes
WORKDIR /usr/src/userinternoes
EXPOSE 8101
CMD ["java", "-Djava.security.egd=file:/dev/.urandom", "-Duser.timezone=EC", "-jar", "userinternoes-1.0.0.jar"]
