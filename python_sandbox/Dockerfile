FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3 time
RUN useradd -ms /bin/bash test_user
USER test_user
WORKDIR /home/test_user/work
ENV EXE /home/test_user/exec.sh
ENV WORK /home/test_user/work
RUN echo $EXE
RUN echo 'export ts=$(date +%s%N)' > $EXE
RUN echo '(/usr/bin/time -f '%M' python3 $WORK/program.py < $WORK/input > $WORK/output) 2> $WORK/spec' >> $EXE
RUN echo 'tt=$((($(date +%s%N) - $ts)/1000000))' >> $EXE
RUN echo 'echo $tt >> $WORK/spec' >> $EXE
RUN chmod +x $EXE
CMD $EXE
