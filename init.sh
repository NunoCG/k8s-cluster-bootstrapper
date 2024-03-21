#!/bin/sh
set -e

set -a
source ./.env
set +a

RED='\033[0;31m'
NO_COLOR='\033[0m'

#########################################
# PREPARE INFRASTRUCTURE                #
#########################################
printf -- 'Preparing Infrastructure \n'
(
    cd infrastructure
    ./run.sh
)

#########################################
# DEPLOY COMPONENTS                     #
#########################################
printf -- 'Deploying Components \n'
(
    cd components
    ./run.sh
)

printf -- '\033[32m Completed \033[0m\n'
