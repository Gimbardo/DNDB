FROM ruby:2.7.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

COPY . .

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["bash","entrypoint.sh"]

RUN npm install -g yarn
RUN yarn install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
