FROM node

WORKDIR /app
COPY package.json .
RUN npm install

COPY . .

EXPOSE 3001

VOLUME ["/app/message"]

CMD ["node", "server.js"]



# build this: 
# docker build .

# in terminal last line:
# writing image sha256:cd81257d0edf1bc74fdd147c8deb4bc4615245b7d0cae6d28d8843a48 

# run:
# docker run -p 3000:3000 3ce9e00b442942e446c6237c1b90139e1d6ebb712973cd3d0b737490add93747     
# -p means public

# see a list of your containers
# docker ps

# stop an image
# docker stop hopeful_murdock



# docker build -t message-node:volume2 .

# docker run -d -p 3000:3000 --rm --name message-app -v message3:/app/message message-node:volume2
# --name is for naming "message-app", you can name whatever
# volume2 because already have volume1
# message2 is the name you want to name your volume 

