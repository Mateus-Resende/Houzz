FROM ruby:2.5.1

ENV APP_HOME /app/
WORKDIR $APP_HOME

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  build-essential

COPY . .
RUN bundle install

CMD ["exe/console"]
