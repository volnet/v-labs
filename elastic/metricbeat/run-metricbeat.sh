docker rm -f metricbeat_test

docker run -d --name metricbeat_test -v "$PWD/configs":/etc/metricbeat/:z --link elas:elasticsearch docker.elastic.co/beats/metricbeat:6.3.0

docker ps
