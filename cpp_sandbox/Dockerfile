FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y g++ time
RUN useradd -m -s /bin/rbash cpp_user
USER cpp_user
WORKDIR /home/cpp_user/work
ENV START /home/cpp_user/exec.sh
ENV WORK /home/cpp_user/work
RUN echo '#!/bin/bash' >> $START
RUN echo TIMEFORMAT=$\'%3U\\\\n%3S\' >> $START
RUN echo 'time (/usr/bin/time -f %M ./$EXE < $WORK/$INPUT > $WORK/result$NUM) 2> $WORK/spec$NUM' >> $START
RUN chmod +x $START
ENTRYPOINT $START
