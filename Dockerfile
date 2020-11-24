FROM docker:latest

RUN apk --no-cache add python3 py3-pip openssl ca-certificates make
RUN apk --no-cache add --virtual build-dependencies python3-dev gcc libffi-dev openssl-dev libc-dev \
  && pip3 install docker-compose awscli \
  && apk del build-dependencies
