docker rm -f metricbeat_test
docker rm -f mykibana
docker rm -f elas
docker volume rm -f esdata

docker ps -a
docker volume ls
