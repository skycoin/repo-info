# `skycoin/skycoin:release-v0.25.0-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:205a6fda264ff86691e2c1cab3321fbeb8889bc21ea95fe692cba26c64229ef4
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:dc85423f33a0956b9a6d2c00f72ffb3f9899cf9998b4c3ed2701bca7422dd489
	- sha256:4a17bd79181ba9683b98a6229ab83145532fe5b59e4ff6f308e871b9dfd19b57

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T12:57:25.133465335Z
ADD file:0562db66944a00f995a5d5cea1cca4005f50b87065c302cf49ba2f49865fcfd5 in / 
# 2018-12-26T12:57:25.508457527Z
 CMD ["sh"]
# 2018-12-27T06:12:49.610452624Z
 ENV COIN=skycoin
# 2018-12-27T06:12:49.791282007Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T06:12:52.77668548Z
COPY dir:c95bd35a613932c06d4df8a6a348ffa3d2394b7c3fc16cd5f690a747d9aa98ad in / 
# 2018-12-27T06:12:52.978042777Z
 VOLUME [/wallet]
# 2018-12-27T06:12:53.12904156Z
 VOLUME [/data/.skycoin]
# 2018-12-27T06:12:53.298477941Z
 EXPOSE 6000 6420
# 2018-12-27T06:12:53.493310641Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

