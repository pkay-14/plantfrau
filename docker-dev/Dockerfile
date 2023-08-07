FROM ruby:3.0

ENV APP_USER plantfrau
ENV APP_GROUP plantfrau
ENV RACK_ENV development

# Register Yarn package source.
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install additional packages.
RUN apt update -qq
RUN apt install -y postgresql-client nodejs yarn

# Prepare working directory.
WORKDIR /home/$APP_USER/src

#COPY ./ /home/$APP_USER/src

RUN gem install bundler

RUN apt-get install expect -y
# Configure endpoint.
COPY ./docker-dev/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

ENV GEM_HOME /home/$APP_USER/bundle
ENV PATH $GEM_HOME/bin:$PATH

EXPOSE 3000

# Start app server.
#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
CMD [ "bash", "/home/plantfrau/entrypoint.sh"]