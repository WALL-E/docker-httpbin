# Dockerfile - CentOS 7 - RPM version
# https://github.com/openresty/docker-openresty

FROM hub.c.163.com/library/golang:1.8.1

MAINTAINER wall-e <zhangzheng@qianbao.com>

RUN ["go", "get", "github.com/ahmetb/go-httpbin/cmd/httpbin"]

EXPOSE 8080

ENTRYPOINT ["httpbin"]
