
#
# Luvit v0.8.2
#
# VERSION 0.0.1
#

FROM ubuntu:14.04
MAINTAINER Marcus André <hello@marcusandre.de>

#
# Pkg
#

ENV VERSION 0.8.2

#
# System
#

RUN apt-get update -qq
RUN apt-get install -qqy --force-yes build-essential curl

#
# Pull Luvit
#

WORKDIR /tmp
RUN curl -L# http://luvit.io/dist/$VERSION/luvit-$VERSION.tar.gz | tar xz
RUN cd luvit-$VERSION && make && make install
RUN rm -fr luvit-$VERSION.tar.gz
#
# Entry
#

WORKDIR /
CMD ["luvit"]
