FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3
RUN useradd -ms /bin/bash test_user
USER test_user
WORKDIR /home/test_user
ENTRYPOINT python3 work/program.py < input > output
# CMD cat work/output
