#!/bin/bash

_grafana_tag=$1
_grafana_version=${_grafana_tag:1}

if [ "$_grafana_version" != "" ]; then
	echo "pushing fabiojose/grafana:${_grafana_version}"
	docker push fabiojose/grafana:${_grafana_version}
	docker push fabiojose/grafana:latest
else
	echo "pushing fabiojose/grafana:master"
	docker push fabiojose/grafana:master
fi
