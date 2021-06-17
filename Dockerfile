FROM centos:latest

RUN yum install python3 -y &&\
    yum install postgresql -y

RUN pip3 install awscli

RUN echo complete -C '/usr/local/bin/aws_completer' aws >> ~/.bashrc

COPY restore.sh .

COPY backup.sh .

CMD ["/bin/bash"]

