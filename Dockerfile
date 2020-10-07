FROM ruby:2.6-slim

RUN apt-get update && apt-get install -y --no-install-recommends build-essential nodejs \
  && apt-get -y autoclean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/slate

COPY Gemfile* /srv/slate/
RUN gem install bundler && bundle install

VOLUME /srv/slate

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]

EXPOSE 4567
