FROM gcc

ADD . /usr/src/statsd-tg/
WORKDIR /usr/src/statsd-tg/

RUN \
  aclocal && \
  autoheader && \
  automake --add-missing --copy && \
  autoconf && \
  ./configure && \
  make && \
  make install

CMD [ "/usr/local/bin/statsd-tg", "-h" ]
