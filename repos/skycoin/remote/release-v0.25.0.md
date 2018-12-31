# `skycoin/skycoin:release-v0.25.0`

```console
$ docker pull skycoin/skycoin@sha256:c517c24d454659b426ab7a9f0d9d4da70ec5adcebf4f6df2068533f91f833aa2
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:23bc2b70b2014dec0ac22f27bb93e9babd08cdd6f1115d0c955b9ff22b382f5a
	- sha256:3a2e24500b730e2c889b6e29ba8ef34d8288695dcca9dc43a648710f7a5ce32a

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:20:42.687925672Z
ADD file:ce026b62356eec3ad1214f92be2c9dc063fe205bd5e600be3492c4dfb17148bd in / 
# 2018-12-26T08:20:42.831353376Z
 CMD ["sh"]
# 2018-12-27T06:03:27.057889322Z
 ENV COIN=skycoin
# 2018-12-27T06:03:27.390953896Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T06:03:34.571362691Z
COPY dir:93be69b8cb4cc3737bb3968251a6779227be9e7053fcb23af8827b36cd7173a0 in / 
# 2018-12-27T06:03:34.952621418Z
 VOLUME [/wallet]
# 2018-12-27T06:03:35.344466114Z
 VOLUME [/data/.skycoin]
# 2018-12-27T06:03:35.724435528Z
 EXPOSE 6000 6420
# 2018-12-27T06:03:36.096471335Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

