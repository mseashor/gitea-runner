FROM node:20.11.1-bullseye
RUN apt-get update && \
    apt-get install -y --no-install-recommends rsync sudo && \
    rm -rf /var/lib/apt/lists/*

COPY --from=docker:25.0.4 /usr/local/bin/docker /usr/bin/docker
COPY --from=docker:25.0.4 /usr/local/bin/docker-compose /usr/bin/docker-compose

# This enabled `docker compose` to work
RUN mkdir -p /root/.docker/cli-plugins \
  && ln -s /usr/bin/docker-compose /root/.docker/cli-plugins/docker-compose
