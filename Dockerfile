FROM minio/mc

WORKDIR /minio.init

COPY init.sh init.sh
RUN chmod +x init.sh

ENTRYPOINT [ "./init.sh" ]
