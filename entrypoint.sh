#!/usr/bin/env bash

export VERSION=$(yq '.version' Chart.yaml)
export CHARTNAME=$(yq '.name' Chart.yaml)

helm dependency update .

helm package .

echo "Helm Chart Successfully Packaged Chart: ${CHARTNAME}-${VERSION}.tgz"