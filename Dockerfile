FROM ubuntu:18.04

RUN apt update && \
    apt-get install curl wget vim \
      python3 python3-pip \
      dnsutils apache2-utils httpie

EXPOSE 8080

CMD ["python -m SimpleHTTPServer 8080"]
