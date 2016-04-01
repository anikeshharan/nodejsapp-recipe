
echo "starting deployment ....."

#docker-compose up -d
docker run --name mongodb -d mongo

docker run -it --name nodejscontainer -p 3000:3000 --link mongodb:mongo -d anikeshharan/nodejsapp

echo "deployment completed...."
