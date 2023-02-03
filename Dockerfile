#Docker container with a setup for the JSON Schema validator by Katherin Etheridge.

#Copyright 2023, Stefanie Scherzinger <stefanie.scherzinger@uni-passau.de>
#Copyright 2023, Sajal Jain <sajal.jain@uni-passau.de>
#SPDX-License-Identifier: MIT-0

FROM perl:5.34

WORKDIR /usr/src/
RUN git clone https://github.com/karenetheridge/JSON-Schema-Modern.git

RUN cpanm JSON::Schema::Modern
RUN cpanm Cpanel::JSON::XS
RUN cpanm Path::Tiny

COPY runScript.pl /usr/src
