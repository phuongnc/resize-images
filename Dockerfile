FROM alpine:3.14
RUN apk update && \
    apk add --no-cache aws-cli && \
    apk --update add imagemagick && \
    apk add --no-cache --upgrade bash
COPY script.sh /script.sh
RUN chmod +x script.sh
CMD ["/script.sh", "test-medical-images", "test-medical-images-scaled"]
