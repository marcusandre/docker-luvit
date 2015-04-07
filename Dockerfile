
#
# Luvit v2.0.4
#

FROM ubuntu:14.04
MAINTAINER Marcus André <hello@marcusandre.de>

#
# Pkg
#

ENV VERSION 2.0.4

#
# System
#

RUN apt-get update -qq
RUN apt-get install -qqy --force-yes build-essential curl

#
# Pull Luvit
#

WORKDIR /tmp
RUN curl -L# https://github.com/luvit/luvit/archive/$VERSION.tar.gz | tar xz
RUN cd luvit-$VERSION && make && make install
RUN rm -fr luvit-$VERSION.tar.gz

#
# Entry
#

WORKDIR /
CMD ["luvit"]
