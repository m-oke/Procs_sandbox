FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3 time
RUN useradd -ms /bin/bash test_user
USER test_user
WORKDIR /home/test_user/work
ENV START /home/test_user/exec.sh
ENV WORK /home/test_user/work
RUN echo $START
RUN echo 'ts=$(date +%s%N)' > $START
RUN echo '(/usr/bin/time -f '%M' python3 $EXE < $WORK/input$NUM > $WORK/result$NUM) 2> $WORK/spec$NUM' >> $START
RUN echo 'tt=$((($(date +%s%N) - $ts)/1000000))' >> $START
RUN echo 'echo $tt >> $WORK/spec$NUM' >> $START
RUN chmod +x $START
ENTRYPOINT $START
