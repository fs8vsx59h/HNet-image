FROM node:18-bullseye
RUN apt -y update \
&& apt -y upgrade \
&&  apt -y  install curl git wget \
&& git clone https://github.com/Hideipnetwork/hideipnetwork-web.git 
WORKDIR hideipnetwork-web
CMD [ "bash","-c","npm i && npm run start" ]
