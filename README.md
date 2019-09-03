# ElastiFlow&trade;

If you can see this, current branch is **camp-master**.

Some configurations around Docker were modified for the production environnment of wide-camp-1909.
Please refer to [master](https://github.com/wide-camp-1909/elastiflow/tree/master) branch and check the details.

## Getting Started
Clone this branch and deploy with docker-compose:

```
$ git clone -b camp-master --depth 1 https://github.com/wide-camp-1909/elastiflow
$ cd elastiflow
$ docker-compose up -d
```

## Hints
- **[NetFlow-Generator](https://github.com/mshindo/NetFlow-Generator):** Generate arbitrary NetFlow V5 flow records

## Storage Capacity
check the storage capacity

```
curl  'localhost:9200/_cat/indices?v'
```

if health is yellow, you should delete index.

delete command.
```
curl -XDELETE  'localhost:9200/elastiflow-3.5.1-2019.09.03'
```
[reference](https://stackoverflow.com/questions/22924300/removing-data-from-elasticsearch)
