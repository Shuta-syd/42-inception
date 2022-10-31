#get base image latest alpine 
FROM alpine:3.16

#add nginx package
RUN apk update && apk upgrade && apk add --no-cache nginx 

#set port to use this docker image
EXPOSE 443

RUN echo "127.0.0.1 shogura.42.fr" >> /etc/hosts

ENTRYPOINT ["nginx", "-g", "daemon off;"]
