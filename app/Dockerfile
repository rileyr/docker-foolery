FROM ruby:2.2.2

ADD / /app
RUN chmod 755 /app

WORKDIR "/app"

# Node
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# Ruby
RUN gem install bundler
RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server"]
