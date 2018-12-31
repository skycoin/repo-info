# `skycoin/skycoin:develop-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:6efe5744047d9e7dd496ff6896fda90a4f49bb24ea2053c4faedf8a7efdafa84
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:c303561bf8dfa224dba9aa212e5e5c5634eafe22e18883af2e1dba0d032c9a18
	- sha256:2c42132e039055a9bd823f8deb59ea0579d05a9e935c086a4c3882a5d8158708

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T09:48:26.944554108Z
ADD file:97e8ee2e00dbc5787eeada0bb39abc5a075a1e27260e01b3f83dcc0f9169f606 in / 
# 2018-12-26T09:48:27.33637716Z
 CMD ["sh"]
# 2018-12-29T03:58:27.492424067Z
 ENV COIN=skycoin
# 2018-12-29T03:58:27.633902878Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-29T03:58:30.593132607Z
COPY dir:2a8ed25040170b408f26763f48def5c80d15c6ad3effc67316c0a0fdba5ff7f2 in / 
# 2018-12-29T03:58:30.808244113Z
 VOLUME [/wallet]
# 2018-12-29T03:58:30.960754553Z
 VOLUME [/data/.skycoin]
# 2018-12-29T03:58:31.113537403Z
 EXPOSE 6000 6420
# 2018-12-29T03:58:31.26384668Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

