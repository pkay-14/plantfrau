#!/bin/bash
set -e
export APP_USER="plantfrau"
export BUNDLE_PATH="/home/$APP_USER/bundle"

# Remove a potentially pre-existing server.pid for Rails.
rm -f /plantfrau/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
#exec "$@"
bundle install  && bundle exec passenger start --port 3000