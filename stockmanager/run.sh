#!/bin/sh

echo "Waiting for jar to be available"
while [ ! -f ./target/stockmanager-0.0.1-SNAPSHOT.jar.original ]; do sleep 1; done
echo "Jarfile is available"
mv ./target/stockmanager-0.0.1-SNAPSHOT.jar ./app.jar

java -Djava.security.egd=file:/dev/./urandom  -jar ./app.jar
