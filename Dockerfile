# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    sonar-scanner-typescript
# name:     minddocdev/sonar-scanner-typescript
# repo:     https://github.com/minddocdev/sonar-scanner-typescript
# Requires: newtmitch/sonar-scanner:3.3.0-alpine
# authors:  development@minddoc.com
# ------------------------------------------------------
FROM sonarsource/sonar-scanner-cli:latest
LABEL maintainer="development@minddoc.com"

RUN npm install --silent --save-dev -g typescript@4.5.5
ENV NODE_PATH "/usr/lib/node_modules/"
