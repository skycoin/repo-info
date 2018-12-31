# `skycoin/skycoin:release-v0.23.0`

```console
$ docker pull skycoin/skycoin@sha256:ef210ca501514b74b7935607686e0f9faa91c32fd91b4c6bbecfa74382a152cd
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:cd7100a72410606589a54b932cabd804a17f9ae5b42a1882bd56d263e02b6215
	- sha256:e59b1c042e449e4a21f4a0926342652283994dbbcd8a703ccf9de68a58c4ac18
	- sha256:486ea284cf1a70fbb6ad5a96f91e8dfde951d6180a17146b71ef608425f0750e
	- sha256:e0cbb001566b0a630afda60373619ed65b46c35eda2dbcbf03e70d67c03ed615

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp
	- 6430/tcp

```dockerfile
# 2018-01-09T21:10:58.365737589Z
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# 2018-01-09T21:10:58.579708634Z
 CMD ["/bin/sh"]
# 2018-04-26T02:21:34.642729305Z
 ENV COIN=skycoin
# 2018-04-26T02:21:35.15047966Z
 ENV RPC_ADDR=0.0.0.0:6430 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-04-26T02:21:40.721370909Z
COPY multi:61982bd5aef4195b7ad1cdceb8f73c6b2869dd49fc5ad98d9e667b32e5abcb01 in /usr/bin/ 
# 2018-04-26T02:21:43.049324325Z
COPY dir:7df37eca84d9f2ac14c805329758b85ade585b2f5b18f7bed7c09b7295c713cb in /usr/local/skycoin/src/gui/static 
# 2018-04-26T02:21:43.468215734Z
COPY file:4b53ecccaa5391c27c1716c7b78fa4844038d77f50a8d6659ce29d467d20a95f in /usr/local/bin 
# 2018-04-26T02:21:43.758224937Z
 VOLUME [/wallet]
# 2018-04-26T02:21:44.10319401Z
 VOLUME [/data/.skycoin]
# 2018-04-26T02:21:44.43724785Z
 EXPOSE 6000/tcp 6420/tcp 6430/tcp
# 2018-04-26T02:21:44.894022832Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--rpc-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

