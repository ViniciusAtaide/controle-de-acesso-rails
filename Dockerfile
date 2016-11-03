FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs sqlite3 libsqlite3-dev
RUN mkdir /EntradaSaida
WORKDIR /EntradaSaida
ADD Gemfile /EntradaSaida/Gemfile
ADD Gemfile.lock /EntradaSaida/Gemfile.lock
RUN bundle install
ADD . /EntradaSaida