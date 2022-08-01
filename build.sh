docker build -f ./Dockerfile -t registry.aura.ir/mautic/mautic:v4-fpm-aura -t registry.aura.ir/mautic/mautic:latest .
docker push registry.aura.ir/mautic/mautic:latest