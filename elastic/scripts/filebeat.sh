docker rm -f filebeat_test

docker run -d --net host --name filebeat_test -v "$PWD/../filebeat/configs/filebeat.yml":/usr/share/filebeat/filebeat.yml:z -v "$PWD/../filebeat/configs/modules.d/":/usr/share/filebeat/modules.d/:z -v "$PWD/../filebeat/logs/":/usr/share/filebeat/logs/:z docker.elastic.co/beats/filebeat:6.3.0

docker ps
