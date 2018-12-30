# `skycoin/skycoin:release-v0.24.0-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:20809bb4b15cb2d7dea5b09204dbcf75c874f53404c528afaa3c108a240ef13c
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:8609e39e378f147fd4c1c47c1db9a5891048165197654234851c74ef5249e5e2
	- sha256:554fdebe564464fc794bda48d4822467052b815beb73ad11d70b5bb38412cbce
	- sha256:3124b375803c441c97b43721df445e81c6be9db728c5066ba3cf974b7cf2ea75
	- sha256:d6d131293c73ceef4da870ba071791468bee6c304af8b2e90027966e47990ede

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-17T08:48:30.799712322Z
ADD file:4304b545defae287ba9842f93d1629a340edfc6b9c4b960818ec1d96028a1c7d in / 
# 2018-07-17T08:48:36.769388002Z
 CMD ["sh"]
# 2018-07-26T03:30:08.90475151Z
 ENV COIN=skycoin
# 2018-07-26T03:30:09.045687682Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-07-26T03:30:12.523477916Z
COPY multi:0e5762469b171820c7da6dbb40fd4d3362b9ee2d053202ed104dd6f123448c7a in /usr/bin/ 
# 2018-07-26T03:30:13.606863664Z
COPY dir:e7b2faecd7ba7a71d42b003a0d60c0e223b5d05e11fb4af595488117e8e864b3 in /usr/local/skycoin/src/gui/static 
# 2018-07-26T03:30:13.827551293Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-07-26T03:30:13.969752892Z
 VOLUME [/wallet]
# 2018-07-26T03:30:14.115927109Z
 VOLUME [/data/.skycoin]
# 2018-07-26T03:30:14.26272696Z
 EXPOSE 6000 6420
# 2018-07-26T03:30:14.441709891Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

