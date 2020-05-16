FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y git nodejs postgresql-client
RUN mkdir /myapp
# COPY . /myapp
RUN git clone https://gitlab.com/rection/WorkofRails /myapp 
WORKDIR /myapp  
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler --no-document 
RUN RAILS_NEW=development bundle install
COPY . /myapp
COPY config/database.yml.ci config/database.yml
RUN RAILS_ENV=development bundle exec rake db:create
RUN RAILS_ENV=development bundle exec rake db:migrate:reset db:seed
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# ADD . /myapp

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

