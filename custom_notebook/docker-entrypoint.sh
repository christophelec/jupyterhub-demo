#!/bin/bash

set -e

REPOSRC=https://github.com/oscar6echo/Meetup_nov16.git
LOCALREPO=Meetup_nov16

# We do it this way so that we can abstract if from just git later on
LOCALREPO_VC_DIR=$LOCALREPO/.git


useradd ${JPY_USER}
chown ${JPY_USER} /work
su ${JPY_USER}
cd /work

# Clone if the repo does not exist, pull otherwise
if [ ! -d $LOCALREPO_VC_DIR ]
then
      git clone $REPOSRC $LOCALREPO
    else
          cd $LOCALREPO
              git pull $REPOSRC
            fi

exec "$@"
