FROM ruby:latest

RUN gem install neocities
WORKDIR /site

ENTRYPOINT ["neocities", "push"]
