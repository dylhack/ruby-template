FROM ruby:3.3.0 AS base

WORKDIR /opt/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["ruby", "app/main.rb"]

