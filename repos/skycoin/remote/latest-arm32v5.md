# `skycoin/skycoin:latest-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:211729c764edab8a9aff9ca9eea381c230c7b2842291e663f4faf5ca2ba0aaae
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:c303561bf8dfa224dba9aa212e5e5c5634eafe22e18883af2e1dba0d032c9a18
	- sha256:68f23087bb25d6c52700d41e3ca220ad9bd2790f35a43e42248947215666fed2

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T09:48:26.944554108Z
ADD file:97e8ee2e00dbc5787eeada0bb39abc5a075a1e27260e01b3f83dcc0f9169f606 in / 
# 2018-12-26T09:48:27.33637716Z
 CMD ["sh"]
# 2018-12-27T05:47:05.677848755Z
 ENV COIN=skycoin
# 2018-12-27T05:47:05.989407044Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T05:47:12.450988304Z
COPY dir:f52b35b2af04c378694e2261a3e2afe8bf75daea02e69d5a0fa424e368228ad9 in / 
# 2018-12-27T05:47:12.946530192Z
 VOLUME [/wallet]
# 2018-12-27T05:47:13.305478509Z
 VOLUME [/data/.skycoin]
# 2018-12-27T05:47:13.620081994Z
 EXPOSE 6000 6420
# 2018-12-27T05:47:13.990860052Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

