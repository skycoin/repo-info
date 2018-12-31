# `skycoin/skycoin:develop-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:30c728203c88275dad4b09b494eefefe6c8f0246e04402eb5f21c58a78f09cbc
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:62cb8a6b37139ed15f54871281c30470d7b8219c9c5f43cb290ac1c032fafb75
	- sha256:553ece797887cfff14b46f6670b8766fb73c90dd4cad1b90a9dd7e085cf02187

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T09:39:38.497206145Z
ADD file:9e540e4524fba1cc33492285b2613a31ef9eb0eb3b128a6c000d05c7cdd5eef4 in / 
# 2018-12-26T09:39:39.208276063Z
 CMD ["sh"]
# 2018-12-29T04:04:19.776058447Z
 ENV COIN=skycoin
# 2018-12-29T04:04:19.917290146Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-29T04:04:22.998074762Z
COPY dir:2c74d22acab322badc5895d72c2aaa73015e1ab05f102f7163986e68d61ec5cd in / 
# 2018-12-29T04:04:23.212382486Z
 VOLUME [/wallet]
# 2018-12-29T04:04:23.394224549Z
 VOLUME [/data/.skycoin]
# 2018-12-29T04:04:23.548335836Z
 EXPOSE 6000 6420
# 2018-12-29T04:04:23.715735773Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

