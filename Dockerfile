FROM ruby:2.2-slim
MAINTAINER Joe Rocklin <joe.rocklin@gmail.com>

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
          gcc   \
          make  \
          patch \
    && rm -rf /var/lib/apt/lists/*

RUN gem install foodcritic -v 6.0.1 --no-ri --no-rdoc \
 && gem install rubocop -v 0.38.0 --no-ri --no-rdoc
