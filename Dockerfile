FROM docker.io/websphere-liberty:webProfile8
LABEL maintainer "shimauma@jp.ibm.com"

ADD	./files /config
COPY	./war/Counter.war /config/dropins
COPY	./scripts/startup.sh /startup.sh
RUN	echo "Building image..." 
	
EXPOSE 	9080

CMD	["/bin/sh","/startup.sh"]
