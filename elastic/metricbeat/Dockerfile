FROM centos

MAINTAINER volnet "volnet@tom.com"
ENV REFRESHED_AT 2018-06-26

RUN mkdir metricbeat && \
	cd metricbeat && \
	curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.0-x86_64.rpm && \
	rpm -vi metricbeat-6.3.0-x86_64.rpm
RUN metricbeat modules enable system && \
	metricbeat setup -e && \
	service metricbeat start

