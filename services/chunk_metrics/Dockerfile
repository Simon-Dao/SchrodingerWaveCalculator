FROM nginx/nginx-prometheus-exporter:latest AS exporter

FROM nginx:alpine

COPY --from=exporter /usr/bin/nginx-prometheus-exporter /usr/local/bin/
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 9113

CMD ["/entrypoint.sh"]