# `skycoin/skycoin:develop-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:5596a31573fccfdeffb11581dfce9e8e7501be44b1bf39cf4a30ac714f43a10d
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:d74829304bab157c98d0f550e07f335a52c48e3356798b5b989a714848de9bb1
	- sha256:1fb73bacd1601b37816e05f0d1d3eadb44fbd4117b94d972a34eb310793cacf8

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T08:39:59.253094774Z
ADD file:9470afe7e28cc173dd0302df1e0057d3c3f884fc2e7b876e6d5036269bb2ae23 in / 
# 2018-10-03T08:40:00.192238991Z
 CMD ["sh"]
# 2018-12-19T03:20:02.004036403Z
 ENV COIN=skycoin
# 2018-12-19T03:20:02.18160543Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-19T03:20:05.247302875Z
COPY dir:71f9613e9a025db3ecec5dcdfba089672801985c690c2b0176f2841b6b874257 in / 
# 2018-12-19T03:20:05.442923427Z
 VOLUME [/wallet]
# 2018-12-19T03:20:05.589759972Z
 VOLUME [/data/.skycoin]
# 2018-12-19T03:20:05.770510837Z
 EXPOSE 6000 6420
# 2018-12-19T03:20:05.930271234Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

