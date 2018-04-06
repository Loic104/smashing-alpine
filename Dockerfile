
FROM ruby:2.4.1-alpine

RUN apk add --update g++ make 
RUN gem install bundler smashing
RUN mkdir /smashing && \
    smashing new smashing && \
    cd /smashing && \
    bundle

VOLUME ["/smashing"]


ENV PORT 3030
EXPOSE $PORT
WORKDIR /smashing

CMD /usr/local/bundle/bin/bundle install; /usr/local/bundle/bin/smashing start
