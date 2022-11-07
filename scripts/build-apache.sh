#!/bin/bash

set -e # exit 

echo 'Enter mautic version: (e.g. 4.4.302)'
read mautic_version


mautic_tag=$(echo $mautic_version | tr '.' -)

TAG="registry2.aura.ir/mautic/mautic-apache:$mautic_tag"
LATEST="registry2.aura.ir/mautic/mautic-apache:latest"

echo 'Enter release sha1:'
read mautic_sha1

docker build -f ./apache/Dockerfile -t $TAG -t $LATEST --build-arg MAUTIC_VERSION="$mautic_version" --build-arg MAUTIC_SHA1="$mautic_sha1" .
docker push $TAG
docker push $LATEST
