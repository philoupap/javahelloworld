FROM java:8
COPY src /myimage/javahelloworld/src
WORKDIR /myimage/javahelloworld
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
