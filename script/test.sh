#
# Tests the Source code
#


# stop on error
set -e


# require utilities
source script/utils.sh


# script variables
LOG_TITLE="test"


log "running tests with grunt" 0
grunt test

