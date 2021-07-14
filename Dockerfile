FROM alpine:edge
RUN apk update && \
    apk add --no-cache  ca-certificates curl unzip caddy wget acme.sh tor
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
