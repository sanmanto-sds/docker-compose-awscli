FROM docker:20

RUN apk --no-cache add python3 py3-pip openssl ca-certificates make git jq
RUN apk --no-cache add --virtual build-dependencies python3-dev gcc libffi-dev openssl-dev libc-dev \
  && pip3 install --no-cache-dir --upgrade pip wheel && pip3 install --no-cache-dir docker-compose awscli \
  && apk del build-dependencies
