# `skycoin/skycoin:release-v0.24.0`

```console
$ docker pull skycoin/skycoin@sha256:efbfe1d631cdcff87758d47d66ccf855484a0913f3086d24b0239d1f1b5e0d51
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:8e9a7d50b12c4249f7473606c9685f4f4be919a3c00e49a7c3a314ae9de52ed5
	- sha256:3f9590abd2a2704fc59e9f3941d3306e4f28c7e7f72895aa26071002ce4c42f0
	- sha256:779d845481420d254946f0931ad77f179e9b0a3de1d6b7e1c5c38a947a19fb3a
	- sha256:c2ca81b6a8299eaa715e5242888bc9b2bbc162f982a0703bce1e0addc025af52

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-16T22:19:41.841251284Z
ADD file:2a4c44bdcb743a52ffa1c4b07ce471d8735a5d59cb45da2e6bfe0c2b5311ca90 in / 
# 2018-07-16T22:19:42.049157642Z
 CMD ["sh"]
# 2018-07-26T03:28:22.106510031Z
 ENV COIN=skycoin
# 2018-07-26T03:28:22.36326304Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-07-26T03:28:28.969550903Z
COPY multi:d033726808550b3bf4ec4dc28a2156e03a05e265d8e928b8762a8d0ad1f2583e in /usr/bin/ 
# 2018-07-26T03:28:30.930818445Z
COPY dir:e7b2faecd7ba7a71d42b003a0d60c0e223b5d05e11fb4af595488117e8e864b3 in /usr/local/skycoin/src/gui/static 
# 2018-07-26T03:28:31.354417004Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-07-26T03:28:31.600573672Z
 VOLUME [/wallet]
# 2018-07-26T03:28:31.934833603Z
 VOLUME [/data/.skycoin]
# 2018-07-26T03:28:32.235969244Z
 EXPOSE 6000 6420
# 2018-07-26T03:28:32.611631569Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

