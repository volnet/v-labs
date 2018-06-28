Docker
===============================

How to run?
-------------------------------

1. Run ElasticSearch & Kibana:

```
cd scripts/
./ek.sh
```

2. Test ElasticSearch & Kibana:

```
curl http://0.0.0.0:9200
curl http://0.0.0.0:5601
```

or open it in browser.

3. Run MetircBeat, for testing, monitor the host of docker:

```
./metricbeat.sh
docker ps
```

You will see the `metricbeat_test` container is running, else you can run it again until it's running.

4. Open Kibana for watching.

Your Browser:`http://hostIP:5601`, click Dashboard.

If no diagrams, check the time you selected, the default is `Last 15 minutes`.

5. [option]If you want to release resource, erase data, reset all to restart, try to run:

```
./resetall.sh
```

Resources
-------------------------------

1. Get ElasticSearch from docker hub.

```
docker pull elasticsearch
```

2. Get Kibana from docker hub.

```
docker pull kibana
```

3. Get MetricBeat from docker.elastic.io. Start from [Getting started with Metricbeat](https://www.elastic.co/guide/en/beats/metricbeat/current/metricbeat-getting-started.html)

```
docker pull docker.elastic.co/beats/metricbeat:6.3.0
```

4. Get FileBeat from docker.elastic.io. Start from [Getting Started With Filebeat](https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-getting-started.html)

```
docker pull docker.elastic.co/beats/filebeat:6.3.0
```

5. Sample configure for metricbeat

```
https://www.elastic.co/guide/en/beats/metricbeat/current/metricbeat-module-system.html
```
