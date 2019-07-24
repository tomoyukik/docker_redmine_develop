FROM ruby:2.5

RUN gem install bundler
RUN mkdir /redmine
WORKDIR /redmine
ENV BUNDLE_PATH /redmine/vendor/bundle
ENV RAILS_ENV development

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]1
