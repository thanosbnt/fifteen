# base image
FROM node:8.12.0

# set working directory
WORKDIR /home/frontend

ENV PATH /home/frontend/node_modules/.bin:$PATH

COPY package.json /home/frontend
RUN npm install --silent
RUN npm install nodemon
# install and cache app dependencies

COPY . ./

RUN pwd
RUN ls -l
EXPOSE 8080

#start app
#ENTRYPOINT ["npm"]	