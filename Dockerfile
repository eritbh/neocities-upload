FROM ruby:latest

# Install neocities CLI from fork with a hacky fix for ratelimit failures
# See https://github.com/neocities/neocities-ruby/issues/39#issuecomment-1480488505
RUN gem install specific_install
RUN gem specific_install https://github.com/stefan-burke/neocities-ruby.git

WORKDIR /site

ENTRYPOINT ["neocities", "push"]
