docker build -f ./apache/Dockerfile -t registry.aura.ir/mautic/mautic-apache:v4-105 -t registry.aura.ir/mautic/mautic-apache:latest .
docker push registry.aura.ir/mautic/mautic-apache:latest