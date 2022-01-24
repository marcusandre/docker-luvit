
#
# Luvit v2.9.1
#

FROM ubuntu:20.04
MAINTAINER Marcus André <hello@marcusandre.de>

#
# System
#

RUN apt-get update -qq
RUN apt-get install -qqy --force-yes build-essential curl git

#
# Pull Luvit
#

WORKDIR /tmp
RUN git clone https://github.com/luvit/luvit.git
RUN cd luvit
RUN make

#
# Entry
#

WORKDIR /
CMD ["luvit"]
