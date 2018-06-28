docker rm -f elas
docker rm -f mykibana

docker network rm esnet
docker network create esnet

docker run --name elas --network esnet -p 9200:9200 -p 9300:9300 -d -v esdata:/usr/share/elasticsearch/data elasticsearch
docker run --name mykibana --network esnet -e "ELASTICSEARCH_URL=http://elas:9200" -p 5601:5601 -d kibana

docker ps
