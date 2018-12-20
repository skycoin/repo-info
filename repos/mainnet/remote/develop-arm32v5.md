# `skycoin/skycoin:develop-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:9a341e1d524b60c8ecb157354fb06071a1ebcb93b37f67151cc3c40fbc19de6f
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:fb507372b39cf5291c71b33dab6583e02c67efa269417cf7a266632d5b84c4b6
	- sha256:e01d6ea7c4f78fbc8543612fb59a7ee6d3ab777e6094232ae7fa3714d77f4b49

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T08:48:47.7347398Z
ADD file:a2c905afa6fd9c1750578267a9c9c479a04a597c738f6a6e7b419ced5a533aa1 in / 
# 2018-10-03T08:48:48.068409713Z
 CMD ["sh"]
# 2018-12-19T03:12:42.330638851Z
 ENV COIN=skycoin
# 2018-12-19T03:12:42.599865994Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-19T03:12:49.076010771Z
COPY dir:9a2cf5c3ffc51852b3745799b9f1de7b077cf371ab6240b654b8e4863692061d in / 
# 2018-12-19T03:12:49.422648653Z
 VOLUME [/wallet]
# 2018-12-19T03:12:49.698557232Z
 VOLUME [/data/.skycoin]
# 2018-12-19T03:12:50.042157341Z
 EXPOSE 6000 6420
# 2018-12-19T03:12:50.397450773Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

