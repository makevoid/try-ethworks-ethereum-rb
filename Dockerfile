FROM ubuntu:latest

COPY stack/ubuntu-sources.list /etc/apt/sources.list

RUN apt update -y                           && \
apt install -y software-properties-common build-essential  && \
add-apt-repository ppa:brightbox/ruby-ng    && \
add-apt-repository ppa:ethereum/ethereum    && \
apt update -y                               && \
apt install -y ruby ruby-dev solc git                && \
gem update --system                         && \
gem i bundler

RUN mkdir /app

WORKDIR /app

# COPY Gemfile* ./
# RUN bundle --deployment

COPY Gemfile ./
RUN bundle

COPY . .

CMD bundle exec rake
