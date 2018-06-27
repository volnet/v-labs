docker rm -f elas

docker rm -f mykibana

docker run --name elas -p 9200:9200 -p 9300:9300 -d -v esdata:/usr/share/elasticsearch/data elasticsearch

docker run --name mykibana -p 5601:5601 -d --link elas:elasticsearch kibana 

docker ps
