# `skycoin/skycoin:develop`

```console
$ docker pull skycoin/skycoin@sha256:28914d5736759d22ba3df18edf372b3f9111cf886e72837c7d1cb4322d01d20e
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:23bc2b70b2014dec0ac22f27bb93e9babd08cdd6f1115d0c955b9ff22b382f5a
	- sha256:b3fe0e3545cb79c9d6da88845f2624170d9e5ff024e49cba23850d0d92b40849

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:20:42.687925672Z
ADD file:ce026b62356eec3ad1214f92be2c9dc063fe205bd5e600be3492c4dfb17148bd in / 
# 2018-12-26T08:20:42.831353376Z
 CMD ["sh"]
# 2018-12-29T03:54:56.632010264Z
 ENV COIN=skycoin
# 2018-12-29T03:54:57.442926176Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-29T03:55:03.076931621Z
COPY dir:8ed5b7bdec7fdfd3310d5d6f9dcf26108f89face9e5c14bf856ddde7a069700e in / 
# 2018-12-29T03:55:03.357667425Z
 VOLUME [/wallet]
# 2018-12-29T03:55:03.638526987Z
 VOLUME [/data/.skycoin]
# 2018-12-29T03:55:03.898808283Z
 EXPOSE 6000 6420
# 2018-12-29T03:55:04.215873617Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

