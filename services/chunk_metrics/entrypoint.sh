#!/bin/sh
nginx &
exec nginx-prometheus-exporter -nginx.scrape-uri=http://localhost/stub_status