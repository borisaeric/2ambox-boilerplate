echo 'START ----> Configuring node.js <----'

# load `nvm`
source $HOME/.nvm/nvm.sh

# install latest `node`
nvm install node >/dev/null 2>&1
nvm alias default node

# # example steps
# cd /var/www
# npm ci
# npx gulp build

echo 'END ----> Configuring node.js <----'
