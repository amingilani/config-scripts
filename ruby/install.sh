echo 'installing rvm, ruby and rails'
# get mpapis' public key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# install rvm with ruby and rails
\curl -sSL https://get.rvm.io | bash -s stable --rails

echo ''
echo 'installing gems'
gem install bundler
gem install rubocop
gem install rspec
