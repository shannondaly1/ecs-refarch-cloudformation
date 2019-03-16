FROM ruby:2.5.3
MAINTAINER Jarrod Folino <jdfolino@gmail.com>

RUN apt-get update && \
    apt-get install -y net-tools

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
ENV PORT 9494
EXPOSE 9494
CMD ["ruby", "app.rb"]
