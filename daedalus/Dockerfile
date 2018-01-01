FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y git curl build-essential libgtk2.0.0 libasound2 \
    libnotify-bin libgconf-2-4 libnss3 libxss1
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y nodejs
RUN useradd -ms /bin/bash daedalus
USER daedalus
RUN git clone https://github.com/input-output-hk/daedalus.git /home/daedalus/daedalus
WORKDIR /home/daedalus/daedalus
RUN npm install
RUN npm run-script package
ENTRYPOINT npm start
