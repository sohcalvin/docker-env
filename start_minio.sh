docker pull minio/minio
docker run --name lr-minio -p 9000:9000 minio/minio server /data
