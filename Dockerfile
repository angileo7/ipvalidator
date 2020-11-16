FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . /app
EXPOSE 3000
RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
RUN bin/setup
CMD ["bundle", "exec", "rails", "server"]