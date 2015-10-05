FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3 time
RUN useradd -ms /bin/bash test_user
USER test_user
WORKDIR /home/test_user/work
ENV START /home/test_user/exec.sh
ENV WORK /home/test_user/work
RUN echo '#!/bin/bash' >> $START
RUN echo TIMEFORMAT=$\'%3U\\\\n%3S\' >> $START
RUN echo 'time (/usr/bin/time -f %M python3 $EXE < $WORK/input$NUM > $WORK/result$NUM) 2> $WORK/spec$NUM' >> $START
RUN chmod +x $START
ENTRYPOINT $START
