FROM ubuntu:18.04
# 테스트를 위해 주석만 추가
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]i

