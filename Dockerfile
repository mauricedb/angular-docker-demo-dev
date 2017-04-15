FROM node:6.10.2-alpine

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/

RUN ["npm", "install"]

COPY . /app

EXPOSE 4200/tcp

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--poll", "500"]


# ng new docker-demo --skip-install
# cd .\docker-demo

# docker build -t docker-demo-dev .

# Run dev server
# docker run -it --rm -p 4200:4200 -v ${pwd}/src:/app/src docker-demo-dev

# Build dist folder
# docker run -it --rm -v ${pwd}/src:/app/src -v ${pwd}/dist:/app/dist docker-demo-dev npm run build