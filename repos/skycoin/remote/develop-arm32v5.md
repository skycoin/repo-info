# `skycoin/skycoin:develop-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:74976826018f00c7c30af8615f804d21a3a633044789c9c570a74def50b80782
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:fb507372b39cf5291c71b33dab6583e02c67efa269417cf7a266632d5b84c4b6
	- sha256:93c1c1148eaef507801a9705c6af69b5b42d67349f4518a8fbdd4227f000a377

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T08:48:47.7347398Z
ADD file:a2c905afa6fd9c1750578267a9c9c479a04a597c738f6a6e7b419ced5a533aa1 in / 
# 2018-10-03T08:48:48.068409713Z
 CMD ["sh"]
# 2018-12-23T00:31:51.226596856Z
 ENV COIN=skycoin
# 2018-12-23T00:31:51.542177541Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-23T00:31:57.50099051Z
COPY dir:f52b35b2af04c378694e2261a3e2afe8bf75daea02e69d5a0fa424e368228ad9 in / 
# 2018-12-23T00:31:57.834513353Z
 VOLUME [/wallet]
# 2018-12-23T00:31:58.137404707Z
 VOLUME [/data/.skycoin]
# 2018-12-23T00:31:58.471076821Z
 EXPOSE 6000 6420
# 2018-12-23T00:31:58.719641585Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

