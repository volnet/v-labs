echo metricbeat -> elasticsearch -> kibana

docker rm -f metricbeat_test

docker run -d --name metricbeat_test -v "$PWD/../metricbeat/configs/metricbeat.yml":/usr/share/metricbeat/metricbeat.yml:z -v "$PWD/../metricbeat/configs/modules.d/":/usr/share/metricbeat/modules.d/:z --volume=/proc:/hostfs/proc:ro --volume=/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro --volume=/:/hostfs:ro --net=host docker.elastic.co/beats/metricbeat:6.3.0 -e -system.hostfs=/hostfs

docker ps
