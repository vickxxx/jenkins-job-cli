FROM plugins/base:linux-amd64

LABEL maintainer="Vickxxx <lianghuiming@live.com>" \
  org.label-schema.name="jenkins-job" \
  org.label-schema.vendor="vickxxx" \
  org.label-schema.schema-version="0.1"

# RUN sed -i "s@https://dl-cdn.alpinelinux.org/@https://mirrors.aliyun.com/@g" /etc/apk/repositories && \
#   sed -i "s@http://nl.alpinelinux.org/@https://mirrors.aliyun.com/@g" /etc/apk/repositories && \
#   apk update && \
#   apk add --no-cache ca-certificates git openssh curl perl && \
#   rm -rf /var/cache/apk/* 


COPY ./jj /bin/
COPY ./run.sh /bin/

ENTRYPOINT ["/bin/run.sh"]
