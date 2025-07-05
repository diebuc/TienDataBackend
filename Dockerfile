FROM ruby:2.6.10

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and install gems
COPY Gemfile* ./
RUN gem install bundler -v 1.17.3
RUN bundle _1.17.3_ install --jobs 4 --retry 3

# Copy application code
COPY . .

# Expose port
EXPOSE 3000

# Start the server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]