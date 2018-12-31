# `skycoin/skycoin:develop-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:478892dd4531863d1abc7539d426542094e224ff3bfeb4e5b850ce3d229fca0b
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:dc85423f33a0956b9a6d2c00f72ffb3f9899cf9998b4c3ed2701bca7422dd489
	- sha256:565695627adf6cdd199aa3b2aebeb28399067895b29624041ef2c263ccc660f7

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T12:57:25.133465335Z
ADD file:0562db66944a00f995a5d5cea1cca4005f50b87065c302cf49ba2f49865fcfd5 in / 
# 2018-12-26T12:57:25.508457527Z
 CMD ["sh"]
# 2018-12-29T04:02:22.311083531Z
 ENV COIN=skycoin
# 2018-12-29T04:02:22.45193039Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-29T04:02:25.432806183Z
COPY dir:e9f3b33a5a4603898b441a17f3febb0b7a57f39b436b7146b5b61f025337e473 in / 
# 2018-12-29T04:02:25.621738256Z
 VOLUME [/wallet]
# 2018-12-29T04:02:25.77851529Z
 VOLUME [/data/.skycoin]
# 2018-12-29T04:02:25.933518852Z
 EXPOSE 6000 6420
# 2018-12-29T04:02:26.089630671Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

