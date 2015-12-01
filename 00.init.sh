#!/bin/sh

curl -XPUT localhost:9200/_template/my_template -d @template.json
