# `skycoin/skycoin:release-v0.24.0-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:f7a0953d8a79e2c4e972f96dea9686749ecf622d0e3ba56d6242f807b5c294d2
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:4ed4f7ff3a70aa564e81d46fb035ff53f073b053181acfef57cb60ec2bcd12f2
	- sha256:b70e0a3c729d4722dfe231e28c714d4d53a9f6e89300f4c1cfb53fcaf15ba7e4
	- sha256:f460c83756d71e673eb8518fe63a8931cf4c01a865e0357e56b8240f3b1b04e5
	- sha256:bc5c7ca63ecf7e74ef808d8c75379ae33863ea570403896ca4fc847a50df82a9

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-17T08:40:41.756269721Z
ADD file:f33068a0535ddf107558eb797ca7ce4df944921896e742ee34481cbeca778635 in / 
# 2018-07-17T08:40:42.429239529Z
 CMD ["sh"]
# 2018-07-26T03:34:17.157756149Z
 ENV COIN=skycoin
# 2018-07-26T03:34:17.298913196Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-07-26T03:34:20.772851994Z
COPY multi:53abae41a7a65a97fb1aed12a71c9e50422a7bacbb7d6e75b3a948231f1a8636 in /usr/bin/ 
# 2018-07-26T03:34:21.853064532Z
COPY dir:e7b2faecd7ba7a71d42b003a0d60c0e223b5d05e11fb4af595488117e8e864b3 in /usr/local/skycoin/src/gui/static 
# 2018-07-26T03:34:22.068850303Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-07-26T03:34:22.205202271Z
 VOLUME [/wallet]
# 2018-07-26T03:34:22.384544067Z
 VOLUME [/data/.skycoin]
# 2018-07-26T03:34:22.52740924Z
 EXPOSE 6000 6420
# 2018-07-26T03:34:22.680932216Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

