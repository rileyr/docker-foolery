FROM ruby:2.2.2
RUN gem install rack
RUN gem install puma
EXPOSE 3000
ADD /config.ru /config.ru
CMD ["puma", "/config.ru", "-p", "3000"]
