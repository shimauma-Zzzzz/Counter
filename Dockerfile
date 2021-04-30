FROM docker.io/websphere-liberty:webProfile8
LABEL maintainer "shimauma@example.com"

USER 1001
ADD   --chown=1001:0  ./files /config
COPY  --chown=1001:0  ./war/LibertyCounter.war /config/dropins

RUN     configure.sh
