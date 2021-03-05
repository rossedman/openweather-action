FROM alpine
WORKDIR /data
COPY ./entrypoint.sh entrypoint.sh
RUN apk add jq curl bash
ENTRYPOINT ["./entrypoint.sh"]
