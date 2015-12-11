FROM ruby:2.1
MAINTAINER Joe Rocklin <joe.rocklin@gmail.com>

RUN gem install bundler -v 1.10.6 --no-ri --no-rdoc && \
    gem install foodcritic -v 5.0.0 --no-ri --no-rdoc && \
    gem install rubocop -v 0.35.1 --no-ri --no-rdoc
