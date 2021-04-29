FROM docker.io/websphere-liberty:webProfile8
LABEL maintainer "shimauma@example.com"

ADD     ./files /config
COPY    ./war/LibertyCounter.war /config/dropins
USER root
RUN chown -R 1001:0 /config
RUN     configure.sh
