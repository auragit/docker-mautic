#!/bin/bash
set -e

echo 'Enter mautic version: (e.g. 4.4.302)'
read mautic_version

echo 'Enter release sha1:'
read mautic_sha1

docker build -f ./apache/Dockerfile -t registry.aura.ir/mautic/mautic-apache:v4-105 -t registry.aura.ir/mautic/mautic-apache:latest --build-arg MAUTIC_VERSION=$mautic_version --build-arg MAUTIC_VERSION=$mautic_sha1 .
docker push registry.aura.ir/mautic/mautic-apache:latest