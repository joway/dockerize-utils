FROM ubuntu:18.04

RUN apt update \
    && apt-get install -y curl wget vim \
      python3 python3-pip \
      dnsutils apache2-utils httpie iputils-ping \
      default-jre \
  && apt-get clean

RUN curl -o /opt/kafka.tgz http://apache.website-solution.net/kafka/2.0.0/kafka_2.12-2.0.0.tgz \
  && cd /opt && tar -xvzf ./kafka.tgz --strip 1 && rm ./kafka.tgz

WORKDIR /app
COPY ./ ./

EXPOSE 8080

CMD ["./start.sh"]
