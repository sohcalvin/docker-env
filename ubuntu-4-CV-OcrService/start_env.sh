
cp ../../CV-OcrService/environment.yml .

docker build -t ubuntu-4-ocr-service .

docker run -v c:/sdrive/projects/CV-OcrService:/home/vcap/app/CV-OcrService  --rm -it --name ocr-service ubuntu-4-ocr-service
