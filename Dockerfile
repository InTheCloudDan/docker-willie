FROM ubuntu:14.04

ENV WILLIE_USER willieuser

# Install Python Setuptools
RUN useradd $WILLIE_USER
RUN mkdir /home/willieuser/
RUN chown willieuser:willieuser -R /home/willieuser/

RUN apt-get install -y python3-setuptools

RUN sudo easy_install3 pip
# Install pip

RUN pip install willie
