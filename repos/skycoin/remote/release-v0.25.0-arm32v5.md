# `skycoin/skycoin:release-v0.25.0-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:69d4dcdd7af6e4fd807710ce31bb42a6ba480ccdc13c39332ff4883755b03631
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:c303561bf8dfa224dba9aa212e5e5c5634eafe22e18883af2e1dba0d032c9a18
	- sha256:e8b2f9b05170a91348ef905856a6833227e99a5b654efebc24fe5c4d22fdb367

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T09:48:26.944554108Z
ADD file:97e8ee2e00dbc5787eeada0bb39abc5a075a1e27260e01b3f83dcc0f9169f606 in / 
# 2018-12-26T09:48:27.33637716Z
 CMD ["sh"]
# 2018-12-27T06:07:21.234856749Z
 ENV COIN=skycoin
# 2018-12-27T06:07:21.518480681Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T06:07:28.137221489Z
COPY dir:f52b35b2af04c378694e2261a3e2afe8bf75daea02e69d5a0fa424e368228ad9 in / 
# 2018-12-27T06:07:28.49991159Z
 VOLUME [/wallet]
# 2018-12-27T06:07:28.935435301Z
 VOLUME [/data/.skycoin]
# 2018-12-27T06:07:29.2613162Z
 EXPOSE 6000 6420
# 2018-12-27T06:07:29.601767932Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

