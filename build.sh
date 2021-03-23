#!/bin/bash

sudo rm -r bookinfo/
git clone https://github.com/pirsoscom/bookinfo.git

cd ./bookinfo/src/productpage
docker build -t niklaushirt/bookinfo-productpage-v1:instana .
docker push niklaushirt/bookinfo-productpage-v1:instana
