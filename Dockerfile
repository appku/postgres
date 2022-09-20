FROM postgres:14-alpine

RUN apk --no-cache add shadow
RUN groupadd -r -g 7585 appku\
    && usermod -aG appku root