# `skycoin/skycoin:release-v0.22.0`

```console
$ docker pull skycoin/skycoin@sha256:8b407227171b3bf409b65357d46a965e57c2a47b879544a0babfe7986304833c
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:cd7100a72410606589a54b932cabd804a17f9ae5b42a1882bd56d263e02b6215
	- sha256:bd01bc3c647f2efb9e2b0e5c6f210a2a2fc42b98baa5208c98bcbec7ddaafac1
	- sha256:bdefa4772a2fee38b9a0980c4fbfcee9e52d3237957b6de29d2b740632feba55
	- sha256:2f21822b4b4891034bc527a3c2bc458d5d4453566aa1e7caa78aa7e21489c919

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp
	- 6430/tcp

```dockerfile
# 2018-01-09T21:10:58.365737589Z
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# 2018-01-09T21:10:58.579708634Z
 CMD ["/bin/sh"]
# 2018-03-23T10:56:01.93610662Z
 ENV COIN=skycoin RPC_ADDR=0.0.0.0:6430 DATA_DIR=/data/. WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-03-23T10:56:02.798184603Z
/bin/sh -c adduser -D skycoin
# 2018-03-23T10:56:03.233884595Z
 USER [skycoin]
# 2018-03-23T10:56:06.135330604Z
COPY multi:6f14cf40a56b3c372f0d213dd6b4007b6d32157dcc3bfee141cfef65a91bb176 in /usr/bin/ 
# 2018-03-23T10:57:02.538227593Z
COPY dir:b77576087a33a032000f6314680f0a444d5e51be57c9aaec769143f3207d32ea in /usr/local/skycoin/src/gui/static 
# 2018-03-23T10:57:02.663950743Z
 VOLUME [/wallet]
# 2018-03-23T10:57:02.791516299Z
 VOLUME [/data/.]
# 2018-03-23T10:57:02.912541607Z
 EXPOSE 6000/tcp 6420/tcp 6430/tcp
# 2018-03-23T10:57:03.046980244Z
WORKDIR /usr/local/skycoin
# 2018-03-23T10:57:03.174084913Z
 CMD ["skycoin" "--web-interface-addr=0.0.0.0"]
```

