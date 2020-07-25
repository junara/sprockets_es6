FROM ruby:2.7.1-alpine
ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo
RUN apk update
RUN apk add --no-cache make g++ sqlite-dev bash curl git build-base libxml2-dev libxslt-dev postgresql-dev postgresql-client tzdata bash less nodejs yarn nano && \
    gem install bundler
RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp

  # Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

  # Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]