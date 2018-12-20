# `skycoin/skycoin:develop-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:8c86b5779f01221254b49825a89c739a2fca3360930de774b6ae3812fccbf4ae
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:5927a247f82f42c844197d3fc8762f2d33a1c4f77a777ec4f7963d17ccb5b24d
	- sha256:c94603e42e497a14060558fe8d3b506fbb919fe27c43c34d54abd8bc466ba9b4

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T11:57:53.557492063Z
ADD file:c5700f8ddc411006beb98db20df9ab2755a01c7e46cbfa485628aefc635af125 in / 
# 2018-10-03T11:57:54.041198082Z
 CMD ["sh"]
# 2018-12-19T03:18:08.594072732Z
 ENV COIN=skycoin
# 2018-12-19T03:18:08.740360496Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-19T03:18:11.706363012Z
COPY dir:334bc9ffd2f13c79a039dd4a99ac626d85d16bdaf385887084975446421f918e in / 
# 2018-12-19T03:18:11.902835812Z
 VOLUME [/wallet]
# 2018-12-19T03:18:12.059302788Z
 VOLUME [/data/.skycoin]
# 2018-12-19T03:18:12.215060317Z
 EXPOSE 6000 6420
# 2018-12-19T03:18:12.374892982Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

