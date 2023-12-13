FROM node:16.20.2-bullseye
COPY --from=docker:24.0.5 /usr/local/bin/docker /usr/bin/docker
COPY --from=docker:24.0.5 /usr/local/bin/docker-compose /usr/bin/docker-compose

# This enabled `docker compose` to work
RUN mkdir -p /root/.docker/cli-plugins \
  && ln -s /usr/bin/docker-compose /root/.docker/cli-plugins/docker-compos
