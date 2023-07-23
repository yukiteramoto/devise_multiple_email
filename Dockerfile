FROM ruby:2.7-slim-bullseye
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm install --global yarn && \
    apt-get install -y build-essential \
                       default-libmysqlclient-dev 

ENV APP_HOME=/devise_multiple_email
WORKDIR $APP_HOME

COPY ./Gemfile* $APP_HOME/

RUN bundle install --jobs=4

RUN yarn install

COPY . $APP_HOME/

EXPOSE 3000
