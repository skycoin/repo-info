# `skycoin/cxo:latest`

```console
$ docker pull skycoin/cxo@sha256:a5ad903d4dbb5415d55758cb2da5917e46bed078941500cec770b453a5a4100e
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:cd7100a72410606589a54b932cabd804a17f9ae5b42a1882bd56d263e02b6215
	- sha256:9903be245c43e703927c6cb4b35ba0458506ee8f7a42bcbaa09efdadc64235cb
	- sha256:c65bd6fdef1b02ac450a6cc370276e45a1c6ce8f59bc2658a05a61e784e02e67
	- sha256:e4dab89213faae28ac2fa0091c253dcb74e3b6854500a14731e1382189c60d78

- Exposed Ports:
	- 8870/tcp
	- 8871/tcp

```dockerfile
# 2018-01-09T21:10:58.365737589Z
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# 2018-01-09T21:10:58.579708634Z
 CMD ["/bin/sh"]
# 2018-01-28T06:37:37.583221441Z
/bin/sh -c adduser -D cxo
# 2018-01-28T06:37:38.418034211Z
 USER [cxo]
# 2018-01-28T06:37:39.996161397Z
COPY file:fbf6efa79e2fa6badbabdcf3602da3704fe428b991a5af86781da455d36a9ed3 in /usr/bin/ 
# 2018-01-28T06:37:45.324512813Z
COPY file:2b81f53e073a9b31f9cc0ab3ea17cf23ff40734e2ab01805326030718ac65875 in /usr/bin/ 
# 2018-01-28T06:37:45.72333887Z
 EXPOSE 8870/tcp 8871/tcp
# 2018-01-28T06:37:45.988539934Z
 CMD ["cxod" "--tcp=0.0.0.0:8870" "--rpc=0.0.0.0:8871"]
```

