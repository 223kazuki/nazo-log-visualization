# nazo-log visualization

## Require

* embulk 0.7.9
* embulk-formatter-jsonl-0.1.4
* elasticsearch 2.1
* kibana 4.3
* jq

```
curl http://localhost:9200
# 200
```

## Run

```
# regist elasticsearch template.
sh 00.init.sh

# create embulk config from date.
sh 01.make_embulk_config.sh test.csv
# edit test.yml if require.

# run embulk to create json file.
embulk run test.yml

# create elasticsearch bulk data
sh 03.make_bulk_data.sh test0.0.json > bulk.json

# bulk data
sh 04.bulk.sh bulk.json
```
