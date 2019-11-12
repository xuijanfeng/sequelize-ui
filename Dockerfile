FROM node:10.16.3
COPY . /app/
WORKDIR /app
VOLUME /tmp
RUN echo 'Asia/Shanghai' /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install
RUN npm install pm2 @nestjs/cli -g 
RUN npm run build
EXPOSE 5000
ENTRYPOINT ["npm", "start"]