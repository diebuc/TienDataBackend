FROM ruby:2.6.10-alpine

RUN apk add --no-cache \
    build-base \
    postgresql-dev \
    git

WORKDIR /app

# Only copy Gemfile to test bundle install
COPY Gemfile ./

# Install bundler and test gem resolution
RUN gem install bundler -v 1.17.3
RUN bundle _1.17.3_ install --dry-run

# Quick syntax check
COPY app/controllers/ ./app/controllers/
COPY app/models/ ./app/models/
RUN ruby -c app/controllers/stores_controller.rb
RUN ruby -c app/controllers/comments_controller.rb
RUN ruby -c app/models/store.rb
RUN ruby -c app/models/comment.rb

CMD ["echo", "Rails 4.0 upgrade syntax validation passed!"]