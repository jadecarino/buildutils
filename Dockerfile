#
# Copyright contributors to the Galasa project 
#
ARG dockerRepository

FROM ${dockerRepository}/library/httpd:2.4

ARG branch

RUN rm -v /usr/local/apache2/htdocs/*
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

RUN sed -i "s/--branchname--/${branch}/"    /usr/local/apache2/conf/httpd.conf

COPY bin/ /usr/local/apache2/htdocs/
