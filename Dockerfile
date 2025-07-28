FROM stefanprodan/alpine-base:latest

RUN apk --no-cache add git gnupg

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
