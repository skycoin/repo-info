# `skycoin/skycoin:latest`

```console
$ docker pull skycoin/skycoin@sha256:9ec1db8b546183740d05f36f02e86ef600fd4201514ddc81c6967b0c691c4137
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:23bc2b70b2014dec0ac22f27bb93e9babd08cdd6f1115d0c955b9ff22b382f5a
	- sha256:1b26a0fd034555b6a7058b4b07043a9e829fb41129b0bbda23c5f4a0b5c44be8

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:20:42.687925672Z
ADD file:ce026b62356eec3ad1214f92be2c9dc063fe205bd5e600be3492c4dfb17148bd in / 
# 2018-12-26T08:20:42.831353376Z
 CMD ["sh"]
# 2018-12-27T05:43:17.61175081Z
 ENV COIN=skycoin
# 2018-12-27T05:43:18.244051777Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T05:43:25.204011988Z
COPY dir:93be69b8cb4cc3737bb3968251a6779227be9e7053fcb23af8827b36cd7173a0 in / 
# 2018-12-27T05:43:25.603051531Z
 VOLUME [/wallet]
# 2018-12-27T05:43:25.951100101Z
 VOLUME [/data/.skycoin]
# 2018-12-27T05:43:26.378391112Z
 EXPOSE 6000 6420
# 2018-12-27T05:43:26.714708115Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

