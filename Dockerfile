FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.9

RUN gem install em-proxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["em-proxy"]
CMD ["--help"]
