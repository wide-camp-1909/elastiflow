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

If the deployment has succeeded, you can access Kibana at [http://localhost:5601/](http://localhost:5601).

### Storage Usage of Elasticsearch
Type the following to check the current disk usage:

```
$ curl -s http://localhost:9200/_cat/indices?v
```

You *may* delete indices whose statuses are yellow to avoid storage space running out.  
Dispose the index named `elastiflow-3.5.1-2019.09.03` with:
```
$ curl -XDELETE http://localhost:9200/elastiflow-3.5.1-2019.09.03
```

## Hints
- **[NetFlow-Generator](https://github.com/mshindo/NetFlow-Generator):** Generate arbitrary NetFlow V5 flow records
- **[cat indices API](https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-indices.html):** Returns high-level information about indices in a cluster
- **[Removing data from Elasticsearch](https://stackoverflow.com/questions/22924300/removing-data-from-elasticsearch):** Delete indices via HTTP DELETE
