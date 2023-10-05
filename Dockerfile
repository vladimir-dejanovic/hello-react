FROM ubuntu

RUN       \
    apt-get update; \
    apt-get install -y \
		 nodejs \
		 npm \
		 curl \
		 git \
                                                 ;\
    rm -rf /var/lib/apt/lists/*	

RUN  npm install -g bower

RUN useradd react

EXPOSE 3000

CMD /bin/bash
