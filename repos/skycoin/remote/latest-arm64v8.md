# `skycoin/skycoin:latest-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:c680079de2c98f0e02cecae2e301e415a956e4c8a88809891ce4a90a3ba43411
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:62cb8a6b37139ed15f54871281c30470d7b8219c9c5f43cb290ac1c032fafb75
	- sha256:3bd3253bf9d9a9751be66da5627da258e62d544b6b2eddada4ad9f7c41e8888b

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T09:39:38.497206145Z
ADD file:9e540e4524fba1cc33492285b2613a31ef9eb0eb3b128a6c000d05c7cdd5eef4 in / 
# 2018-12-26T09:39:39.208276063Z
 CMD ["sh"]
# 2018-12-27T05:54:35.616063833Z
 ENV COIN=skycoin
# 2018-12-27T05:54:35.754663065Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T05:54:38.785610894Z
COPY dir:f633c5549a48ab9297c210940eef57522e7740de0551185b39b0c733cc688a01 in / 
# 2018-12-27T05:54:38.966828021Z
 VOLUME [/wallet]
# 2018-12-27T05:54:39.112057328Z
 VOLUME [/data/.skycoin]
# 2018-12-27T05:54:39.282584822Z
 EXPOSE 6000 6420
# 2018-12-27T05:54:39.421129101Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

