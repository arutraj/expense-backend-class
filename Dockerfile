FROM            docker.io/redhat/ubi9:latest
RUN             curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN             source /root/.nvm/nvm.sh ; nvm install 20

RUN             useradd expense
RUN             mkdir /app
COPY            *.js package.json /app/
WORKDIR         /app
RUN             npm install
ENTRYPOINT      ["node", "/app/index.js"]


