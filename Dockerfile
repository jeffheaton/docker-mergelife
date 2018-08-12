FROM openjdk:9-jre

WORKDIR /home/ml/output
RUN mkdir -p /home/ml/jar
COPY mergelife-evolve-all.jar /home/ml/jar
COPY objective.json /home/ml/output

CMD [ "java", "-jar", "/home/ml/jar/mergelife-evolve-all.jar", "-config", "objective.json", "evolve"]
