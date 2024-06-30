FROM redhat/ubi8

COPY crash.c	/
COPY client.c   /
COPY clientd    /

WORKDIR /

RUN dnf install -y gcc make vim iputils wget hostname procps-ng

RUN gcc /client.c -o /client
RUN chmod a+x /clientd
CMD bash /clientd
