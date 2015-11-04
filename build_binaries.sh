#!/bin/sh

echo "Building filebeat..."

git clone https://github.com/elastic/filebeat.git
cd filebeat
docker run --rm -w="/go/src/github.com/elastic/filebeat" -v "$PWD:/go/src/github.com/elastic/filebeat" golang make

mv ./filebeat ./../binary/filebeat
cd ..
rm -rf filebeat

echo "Done"