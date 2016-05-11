FROM java:7-jdk

RUN \
  apt-get update && apt-get install -y ant

CMD "bash"
