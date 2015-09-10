FROM ubuntu:14.04
MAINTAINER errorcode "errorcode.sc2@gmail.com"
RUN apt-get update && apt-get install -y python3
RUN useradd -ms /bin/bash test_user
USER test_user
WORKDIR /home/test_user
RUN mkdir work
ADD fib.py work/fib.py
ADD input1 work/input
RUN python3 work/fib.py < work/input > output
RUN cp output work
CMD cat output
