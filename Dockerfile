FROM postgres:14-alpine

RUN apk --no-cache add shadow
RUN groupadd -r -g 7585 appku \
    && usermod -aG appku root \
    && usermod -aG appku postgres


ARG APPKU_POSTGRES_VERSION=14
ENV APPKU_POSTGRES_VERSION=${APPKU_POSTGRES_VERSION}