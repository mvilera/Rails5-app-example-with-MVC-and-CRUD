FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN echo "127.0.0.1 localhost" > /etc/hosts
RUN bundle --without production
RUN rake db:migrate
CMD rails server -b 0.0.0.0
