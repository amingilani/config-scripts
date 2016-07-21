#!/bin/bash

# if not is not installed
if ! type node
then
  # if nvm is not installed
  if ! type nvm
  then
    # install nvm
    echo 'Installing nvm'
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash
  fi

  # install node
  # check the latest version
  NODE_STABLE="$(nvm ls-remote stable)"
  # trim the whitespace
  NODE_STABLE="$(echo -e "${NODE_STABLE}" | tr -d '[[:space:]]')"

  echo "Installing node $NODE_STABLE"
  nvm install $NODE_STABLE
  nvm alias default $NODE_STABLE
fi

echo 'Installing basic node packages'
npm i -g spoof
npm i -g jshint
npm i -g yo
npm i -g grunt-cli
npm i -g generator-gitignore
