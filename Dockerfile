FROM ubuntu:18.04

RUN apt update \
    && apt-get install -y curl wget vim \
      python3 python3-pip \
      dnsutils apache2-utils httpie \
    && apt-get clean

WORKDIR /app
COPY ./ ./

EXPOSE 8080

CMD ["./start.sh"]
