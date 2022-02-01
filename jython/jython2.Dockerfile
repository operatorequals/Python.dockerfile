FROM openjdk:slim-bullseye

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://repo1.maven.org/maven2/org/python/jython-standalone/2.7.2/jython-standalone-2.7.2.jar -O jython.jar

ENTRYPOINT ["java", "-jar", "jython.jar"]

