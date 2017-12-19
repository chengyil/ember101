FROM ruby:2.3
RUN apt-get update && \
    apt-get install -y nodejs
WORKDIR /opt/app
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle
