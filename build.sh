git pull
mvn clean install
docker build -t chatgpt-root .
docker tag chatgpt-root:latest harbor.test-tokencan.com/exchange/chatgpt-root:latest
docker push harbor.test-tokencan.com/exchange/chatgpt-root:latest
