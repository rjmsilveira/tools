FROM alpine:latest 
ENV SIEGEVERSION=3.1.4

LABEL maintainer-name="Ricardo Silveira"
LABEL maintainer="rjmsilveira@gmail.com" 

RUN apk --no-cache add python py-pip curl vim tcpdump bind-tools 
RUN pip install awscli


RUN apk update \
    && apk add curl g++ make openssl openssl-dev zlib zlib-dev\
    && curl http://download.joedog.org/siege/siege-$SIEGEVERSION.tar.gz > siege-$SIEGEVERSION.tar.gz \
    && tar -xf siege-${SIEGEVERSION}.tar.gz \
    && cd siege-${SIEGEVERSION} \
    && ./configure \
    && make install

ENTRYPOINT ["tail", "-f", "/dev/null"]
