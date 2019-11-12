FROM node:10.16.3
COPY . /app/
WORKDIR /app
VOLUME /tmp
RUN echo 'Asia/Shanghai' /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install
EXPOSE 5000
ENTRYPOINT ["npm", "start"]