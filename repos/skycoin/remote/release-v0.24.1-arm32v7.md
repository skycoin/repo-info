# `skycoin/skycoin:release-v0.24.1-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:c0da58b22b7dbc9021b306fc864e4cfa70ae265a3b966c827282dd04940ea6d7
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:f49e5e7cf51e33398d0d0f782c0fec84bc716552ecec53df791d89ccc0035bca
	- sha256:8a7facc45a540ad0d6c980d49d7e9d16ed9e02534d84aba78bff4c6a57b428e4
	- sha256:802983da6cfebcd345563ea029eb639fb35b41e016725cafd594c9320ad445b1
	- sha256:260c016b764275ed5329446b9c0055c84de72ba26d8f6d2d7cf8b1a3951cb481
	- sha256:97c7d03651a26f3bd385675ba6c26dab735bf0e2f642708a3e3d4eb933896b82

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-31T23:55:47.466134194Z
ADD file:bae1171cd0b376a791c3aaa2c798a7c3d63edf7077251f7de77c861c8f159604 in / 
# 2018-07-31T23:55:47.716629668Z
 CMD ["sh"]
# 2018-08-01T04:55:13.139801119Z
 ENV COIN=skycoin
# 2018-08-01T04:55:13.267351852Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-08-01T04:55:16.512392434Z
COPY multi:c7aa854cd1eccb3d464d31bbe458ddae1aacb1979e80e5ddd26e442f6d732963 in /usr/bin/ 
# 2018-08-01T04:55:17.590470268Z
COPY dir:3f74acf4ef7d770fb19d75efd229e9b3725eb3df4c40bae5e6421d3f6f051c64 in /usr/local/skycoin/src/gui/static 
# 2018-08-01T04:55:17.801921517Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-08-01T04:55:18.28001798Z
COPY dir:99df9ef76559aca77804eda950ec98b8b63c9d5be6dee875bdb8fee63366c792 in /etc/ssl/certs 
# 2018-08-01T04:55:18.432166534Z
 VOLUME [/wallet]
# 2018-08-01T04:55:18.568755933Z
 VOLUME [/data/.skycoin]
# 2018-08-01T04:55:18.713595182Z
 EXPOSE 6000 6420
# 2018-08-01T04:55:18.860774632Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

