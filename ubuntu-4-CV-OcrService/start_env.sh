
cp ../../CV-OcrService/environment.yml .

docker build -t ubuntu-4-ocr-service .

docker run --net="host" -v c:/sdrive/projects/CV-OcrService:/home/vcap/app/CV-OcrService  --rm -it --name ocr-service ubuntu-4-ocr-service
docker run --net="host" -p 9099:9099 -v c:/sdrive/projects/CV-OcrService:/home/vcap/app/CV-OcrService  --rm -it --name ocr-service ubuntu-4-ocr-service
