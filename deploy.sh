# /bin/bash


sudo docker-compose up -d

if sudo docker ps | grep -q vjyguvi/prod:app111; then
	echo " container created"
fi
