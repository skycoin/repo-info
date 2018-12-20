# `skycoin/skycoin:release-v0.24.1-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:10160a891a7802a26782e9f1f5ca3e9cf9ef4a778723c0b3c3a2a58d977319ba
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:69e5abab97d05cbd643f6e6c5c079d70244417c671775ab1a973aad0961e368b
	- sha256:6bf0ad9b16e17d131a19e4990ca8b803e8f7144362e2463eba3856eb8acd8a7d
	- sha256:6b49afe640efb39b98c5370079c585b4c555942994885ae10e6543022a01270a
	- sha256:4c92d3649eba933004ed1255dc47d1210b2cbf0a00bd313aeb8823d14c5dafb7
	- sha256:f4e9aad670321ccc1809ecd8fd031bc3c997baae3aba0fde7b6f1d26d776245a

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-31T23:55:45.233477706Z
ADD file:21a9161496087757c7ba5e0c9d753511ee0538f036f5c292a0d6cbcb3207995c in / 
# 2018-07-31T23:55:45.428918867Z
 CMD ["sh"]
# 2018-08-01T04:53:35.039122967Z
 ENV COIN=skycoin
# 2018-08-01T04:53:35.171820374Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-08-01T04:53:38.447623854Z
COPY multi:4ec0b83e3acade97b1024ba965646aad5f6cb027407e61471b9b09235924df71 in /usr/bin/ 
# 2018-08-01T04:53:39.538190443Z
COPY dir:3f74acf4ef7d770fb19d75efd229e9b3725eb3df4c40bae5e6421d3f6f051c64 in /usr/local/skycoin/src/gui/static 
# 2018-08-01T04:53:39.748655951Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-08-01T04:53:40.217458579Z
COPY dir:99df9ef76559aca77804eda950ec98b8b63c9d5be6dee875bdb8fee63366c792 in /etc/ssl/certs 
# 2018-08-01T04:53:40.374984295Z
 VOLUME [/wallet]
# 2018-08-01T04:53:40.518336892Z
 VOLUME [/data/.skycoin]
# 2018-08-01T04:53:40.692086532Z
 EXPOSE 6000 6420
# 2018-08-01T04:53:40.837748591Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

