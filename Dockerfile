#Docker container for a simple perl setup
#Copyright 2022, Stefanie Scherzinger <stefanie.scherzinger@uni-passau.de>
#Copyright 2022, Sajal Jain <sajal.jain@uni-passau.de>
#SPDX-License-Identifier: MIT-0

FROM perl:5.34

WORKDIR /usr/src/
RUN git clone https://github.com/karenetheridge/JSON-Schema-Modern.git

#cpanm is tool to install perl projects from cpan repository
RUN cpanm JSON::Schema::Modern
RUN perldoc JSON::Schema::Modern
