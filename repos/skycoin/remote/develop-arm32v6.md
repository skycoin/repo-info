# `skycoin/skycoin:develop-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:a933d6f9a2866bdc907ddf7de45a25cea2a3fbbd6e3cfee3dd4a51f4e847711c
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:712a9a7b47652499257bb96c6066b80042d8fe2616b9225141a21299f317e315
	- sha256:da508342e9e65cdc0379d8501da033385ccbc3417a8c61dc2b0c15eb11afdc7b

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T07:49:30.844190333Z
ADD file:acc946308a1eec5d1a948cfdbf2e7f4988c3b4a45a2d2934dbe9f063ef53f150 in / 
# 2018-10-03T07:49:31.20867797Z
 CMD ["sh"]
# 2018-12-23T00:35:01.851999415Z
 ENV COIN=skycoin
# 2018-12-23T00:35:02.046178759Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-23T00:35:05.252202058Z
COPY dir:b3f781d3ce79016efa6e1b56d59753eb9b7b4f22fa089e2ea130697a25ae8a57 in / 
# 2018-12-23T00:35:05.450429929Z
 VOLUME [/wallet]
# 2018-12-23T00:35:05.614589627Z
 VOLUME [/data/.skycoin]
# 2018-12-23T00:35:05.773266538Z
 EXPOSE 6000 6420
# 2018-12-23T00:35:05.969729856Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

