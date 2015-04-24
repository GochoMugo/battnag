#
# Builds the Project
#


# stop on error
set -e


# require utilities
source script/utils.sh


# script variables
LOG_TITLE="build"
jade="./node_modules/.bin/jade"


log "cleaning out/" 0
rm -rf out


log "creating out/" 0
mkdir out


log "creating out/web/ for web interface" 0
mkdir out/web


log "creating out/app for standalone app" 0
mkdir out/app


log "compiling for web interface" 0
$jade index.jade --out out/web --obj '{ web: true }'


log "compiling for standalone app" 0
$jade index.jade --out out/app --obj '{ app: true }'


log "copying over other files" 0
ls out/ | xargs -I{} cp -r res/ deps/ css/ js/ package.json LICENSE out/{}


log "done" 1

