FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3 time
RUN useradd -m -s /bin/bash python_user
RUN mkdir /home/python_user/bin
RUN ln -s /usr/bin/python3 /home/python_user/bin/python3
RUN echo 'PATH=/home/python_user/bin' >> /home/python_user/.bashrc
RUN chmod o-w /etc
RUN chmod o-x /bin/*
RUN chmod o-x /usr/bin/*
RUN chmod o+x /usr/bin/time
RUN chmod o+x /usr/bin/groups
RUN chmod o+x /usr/bin/python3
RUN chmod o+x /bin/bash

ENV START /home/python_user/exec.sh
RUN echo '#!/bin/bash' >> $START
RUN chmod 777 $START
RUN chown python_user:python_user $START

USER python_user
WORKDIR /home/python_user/work
ENV START /home/python_user/exec.sh
ENV WORK /home/python_user/work

# Disable builtin commands
RUN echo 'enable -n alias' >> $START
RUN echo 'enable -n cd' >> $START
RUN echo 'enable -n builtin' >> $START
RUN echo 'enable -n command' >> $START
RUN echo 'enable -n declare' >> $START
RUN echo 'enable -n dirs' >> $START
RUN echo 'enable -n disown' >> $START
RUN echo 'enable -n echo' >> $START
RUN echo 'enable -n eval' >> $START
RUN echo 'enable -n exec' >> $START
RUN echo 'enable -n exit' >> $START
RUN echo 'enable -n export' >> $START
RUN echo 'enable -n fc' >> $START
RUN echo 'enable -n fg' >> $START
RUN echo 'enable -n hash' >> $START
RUN echo 'enable -n history' >> $START
RUN echo 'enable -n jobs' >> $START
RUN echo 'enable -n kill' >> $START
RUN echo 'enable -n let' >> $START
RUN echo 'enable -n local' >> $START
RUN echo 'enable -n logout' >> $START
RUN echo 'enable -n mapfile' >> $START
RUN echo 'enable -n popd' >> $START
RUN echo 'enable -n pushd' >> $START
RUN echo 'enable -n pwd' >> $START
RUN echo 'enable -n read' >> $START
RUN echo 'enable -n readarray' >> $START
RUN echo 'enable -n readonly' >> $START
RUN echo 'enable -n return' >> $START
RUN echo 'enable -n set' >> $START
RUN echo 'enable -n shift' >> $START
RUN echo 'enable -n shopt' >> $START
RUN echo 'enable -n source' >> $START
RUN echo 'enable -n suspend' >> $START
RUN echo 'enable -n test' >> $START
RUN echo 'enable -n times' >> $START
RUN echo 'enable -n trap' >> $START
RUN echo 'enable -n type' >> $START
RUN echo 'enable -n typeset' >> $START
RUN echo 'enable -n ulimit' >> $START
RUN echo 'enable -n unalias' >> $START
RUN echo 'enable -n umask' >> $START
RUN echo 'enable -n unset' >> $START
RUN echo 'enable -n wait' >> $START
RUN echo 'enable -n enable' >> $START

RUN echo TIMEFORMAT=$\'%3U\\\\n%3S\' >> $START
RUN echo 'time (/usr/bin/time -f %M python3 $EXE < $WORK/$INPUT > $WORK/result$NUM) 2> $WORK/spec$NUM' >> $START

ENTRYPOINT $START
