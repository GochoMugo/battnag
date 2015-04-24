#
# Pushes to gh-pages branch
#


# we stop on error
set -e


# require some utilities
source script/utils.sh


# script variables
LOG_TITLE="ci-push"
GH_URL="https://github.com/GochoMugo/battnag.git"


log "building app for target platforms" 0
grunt dist


log "cloning this repo again into _out" 0
git clone ${GH_URL} repo


log "moving into repo" 0
cd repo


log "changing to gh-pages branch" 0
git checkout gh-pages


log "removing all current files" 0
git rm -rf *
rm -rf *


log "copying web-interface output" 0
cp -r ../out/web/* .


log "configuring and committing changes" 0
git config user.email "mugo@forfuture.co.ke"
git config user.name "travis-ci-bot"
git add -A .
git commit -a -m "Build ${TRAVIS_BUILD_NUMBER}"


log "adding authentication key" 0
echo -e "machine github.com\n  login mugo@forfuture.co.ke\n  password ${GH_TOKEN}" >> ~/.netrc


log "pushing changes" 0
git push origin gh-pages \
  && log "successfully pushed to origin" 1 \
  || log "failed to push to origin" 2

