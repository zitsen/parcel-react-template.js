FROM nginx:1.13.9-alpine
MAINTAINER Huo Linhe <linhehuo@gmail.com>

COPY dist /usr/share/nginx/html
