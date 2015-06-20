FROM ruby:2.2.2

ADD / /app
RUN chmod 755 /app && chmod 755 /app/bash_setup.sh


WORKDIR "/app"

# Node
RUN apt-get update && apt-get install -y nodejs npm

# Ruby / Rails
RUN gem install bundler && bundle install

EXPOSE 3000
CMD ["source", "bash_setup.sh"]
CMD ["bundle", "exec", "rake", "db:create"]
CMD ["bundle", "exec", "rake", "db:migrate"]
CMD ["bundle", "exec", "rails", "server"]
