FROM alpine:latest 

LABEL maintainer-name="Ricardo Silveira"
LABEL maintainer="rjmsilveira@gmail.com" 

RUN apk --no-cache add python py-pip curl vim tcpdump 
RUN pip install awscli dig 

ENTRYPOINT ["tail", "-f", "/dev/null"]