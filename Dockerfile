FROM docker.io/websphere-liberty:kernel
LABEL maintainer "shimauma@example.com"

ADD     --chown=1001:0 ./files /config
COPY    --chown=1001:0 ./war/LibertyCounter.war /config/dropins
RUN     configure.sh
