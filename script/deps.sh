#
# Installs dependencies
#


# we stop on error
set -e


# we require utilities
source script/utils.sh


# script variables
LOG_TITLE="deps"


log "cleaning/creating/moving to deps/" 0
rm -rf deps
mkdir -p deps
cd deps


log "installing node modules" 0
npm install


log "installing jquery" 0
wget http://code.jquery.com/jquery-1.11.2.min.js


log "installing battery.js " 0
wget https://raw.githubusercontent.com/pstadler/battery.js/master/battery.min.js


log "installing buzz.js" 0
wget https://cdnjs.cloudflare.com/ajax/libs/buzz/1.1.10/buzz.min.js

