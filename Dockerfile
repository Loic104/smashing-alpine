
FROM ruby:alpine

RUN apk add --update g++ make nodejs
RUN gem install bundler smashing tzinfo-data
RUN mkdir /smashing && \
    smashing new smashing && \
    cd /smashing && \
    bundle
RUN bash -c gem 'tzinfo-data' >> Gemfile

VOLUME ["/smashing"]


ENV PORT 3030
EXPOSE $PORT
WORKDIR /smashing

CMD /usr/local/bundle/bin/bundle install; /usr/local/bundle/bin/smashing start
