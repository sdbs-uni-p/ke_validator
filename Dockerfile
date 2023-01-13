#FROM ubuntu:latest

FROM perl:5.34

WORKDIR /usr/src/
RUN git clone https://github.com/karenetheridge/JSON-Schema-Modern.git

#steps to set up linux environment
#RUN perl -v
#RUN chmod 1777 /tmp
#RUN apt clean && \
#	apt-get update -y && \
#	apt-get install -y cpanminus
#RUN cpan App::cpanminus

RUN cpanm JSON::Schema::Modern
RUN perldoc JSON::Schema::Modern
