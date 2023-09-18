FROM mcr.microsoft.com/devcontainers/base:alpine-3.18

RUN apk add --no-cache dotnet6-sdk xmlstarlet xdg-utils
RUN apk add --no-cache perl-file-rename --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/

RUN dotnet tool install --global Microsoft.PowerApps.CLI.Tool