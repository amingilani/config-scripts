if test ! $(which spoof)
then
  echo 'installing npm packages'
  npm i -g spoof
  npm i -g jshint
  npm i -g yo
  npm i -g grunt-cli
  npm i -g generator-gitignore
fi
