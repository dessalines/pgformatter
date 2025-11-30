VERSION=5.8
docker build -t dessalines/pgformatter:${VERSION} .
docker build -t dessalines/pgformatter:latest .
docker push dessalines/pgformatter:${VERSION}
docker push dessalines/pgformatter:latest
