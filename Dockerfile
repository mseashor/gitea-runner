FROM node:16.20.2-bullseye
COPY --from=docker:24.0.5 /usr/local/bin/docker /usr/bin/docker
