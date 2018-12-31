# `skycoin/skycoin:release-v0.24.1`

```console
$ docker pull skycoin/skycoin@sha256:b83c80cd20851ecf00a4993373910f463d910d7e3d4911208347cc207c26144f
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:f9d9e4e6e2f0689cd752390e14ade48b0ec6f2a488a05af5ab2f9ccaf54c299d
	- sha256:e1a30f5243c907c33906482274cc1e140d435d9ee365daaf694cf66ba45fde69
	- sha256:9c6ff1e7401ec843263423322f75ccbfe1ed1969c3f74095d193461b4650254a
	- sha256:f4af39d61f5d7ee528945d2c22139dfec7e43a3c960a40fed57edc058ad07cfb
	- sha256:b719f7750d9629fe7e4db36a445dbecdd8491d51a4801e88acd9f535d883adb0

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-31T22:20:07.361628468Z
ADD file:96fda64a6b725d4df5249c12e32245e2f02469ff637c38077740f4984cd883dd in / 
# 2018-07-31T22:20:07.617575594Z
 CMD ["sh"]
# 2018-08-01T04:50:13.205719425Z
 ENV COIN=skycoin
# 2018-08-01T04:50:13.456797226Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-08-01T04:50:20.393184498Z
COPY multi:fdee8cf9008f236c645e9f4cdc774ee23108baaa6fadf018e8dfd0e3a4c747dd in /usr/bin/ 
# 2018-08-01T04:50:22.646740768Z
COPY dir:3f74acf4ef7d770fb19d75efd229e9b3725eb3df4c40bae5e6421d3f6f051c64 in /usr/local/skycoin/src/gui/static 
# 2018-08-01T04:50:23.093563369Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-08-01T04:50:23.573765901Z
COPY dir:99df9ef76559aca77804eda950ec98b8b63c9d5be6dee875bdb8fee63366c792 in /etc/ssl/certs 
# 2018-08-01T04:50:23.730154032Z
 VOLUME [/wallet]
# 2018-08-01T04:50:23.880055911Z
 VOLUME [/data/.skycoin]
# 2018-08-01T04:50:24.027066162Z
 EXPOSE 6000 6420
# 2018-08-01T04:50:24.175874313Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

