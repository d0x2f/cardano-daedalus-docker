FROM ubuntu:16.04

RUN apt-get update &&\
    apt-get install -y git curl build-essential libgtk2.0.0 libasound2 \
    libnotify-bin libgconf-2-4 libnss3 libxss1 &&\
    curl -sL https://deb.nodesource.com/setup_6.x | bash &&\
    apt-get install -y nodejs &&\
    useradd -ms /bin/bash daedalus &&\
    su - daedalus -c 'git clone https://github.com/input-output-hk/daedalus.git &&\
    npm install && npm run-script package'
USER daedalus
WORKDIR /daedalus
ENTRYPOINT npm start
