# `skycoin/skycoin:develop-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:98416b1aa76847d5c18d489655b08738cda07b56eb48fee763899ad4bd410cd8
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:712a9a7b47652499257bb96c6066b80042d8fe2616b9225141a21299f317e315
	- sha256:cd701880cf96aa7751829d60a2f88c649b46bbaf6d69e8f3645bd06dc683a338

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T07:49:30.844190333Z
ADD file:acc946308a1eec5d1a948cfdbf2e7f4988c3b4a45a2d2934dbe9f063ef53f150 in / 
# 2018-10-03T07:49:31.20867797Z
 CMD ["sh"]
# 2018-12-19T03:16:12.076227531Z
 ENV COIN=skycoin
# 2018-12-19T03:16:12.378378803Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-19T03:16:15.524072272Z
COPY dir:a2ab75f2065a9b729170e9c92dd1d58bd48fd5165ab1e1d910e90adf6adb3680 in / 
# 2018-12-19T03:16:15.739397401Z
 VOLUME [/wallet]
# 2018-12-19T03:16:15.8880563Z
 VOLUME [/data/.skycoin]
# 2018-12-19T03:16:16.078535242Z
 EXPOSE 6000 6420
# 2018-12-19T03:16:16.239640305Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

