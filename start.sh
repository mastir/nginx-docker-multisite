#!/usr/bin/env bash
cd `dirname "$0"`;
docker run \
  -v ./nginx/site-config.sh:/docker-entrypoint.d/00-site-config.sh:ro \
  -v ./nginx/site.template:/etc/nginx/site.template:ro \
  -v ./sites/:/sites:ro \
  -p 80:80 \
  --name nginx-mastir \
  -d nginx:latest