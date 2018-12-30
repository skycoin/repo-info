# `skycoin/skycoin:latest-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:04771d4787f1cad53e46fbbfc426219fb5a250bb8ccd788304c15bd078bbd16b
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:dc85423f33a0956b9a6d2c00f72ffb3f9899cf9998b4c3ed2701bca7422dd489
	- sha256:1f17972287f8c80557f79388728c498d7a1dea15f24c9e8b98ccf1b9e413003c

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T12:57:25.133465335Z
ADD file:0562db66944a00f995a5d5cea1cca4005f50b87065c302cf49ba2f49865fcfd5 in / 
# 2018-12-26T12:57:25.508457527Z
 CMD ["sh"]
# 2018-12-27T05:52:42.89261396Z
 ENV COIN=skycoin
# 2018-12-27T05:52:43.031054357Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T05:52:45.968132898Z
COPY dir:c95bd35a613932c06d4df8a6a348ffa3d2394b7c3fc16cd5f690a747d9aa98ad in / 
# 2018-12-27T05:52:46.153241996Z
 VOLUME [/wallet]
# 2018-12-27T05:52:46.304618542Z
 VOLUME [/data/.skycoin]
# 2018-12-27T05:52:46.451454054Z
 EXPOSE 6000 6420
# 2018-12-27T05:52:46.609141694Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

