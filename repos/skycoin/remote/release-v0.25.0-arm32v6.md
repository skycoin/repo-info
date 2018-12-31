# `skycoin/skycoin:release-v0.25.0-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:a22830a44d6a36778e0e792a295ec34ace8ba8d4e6ea5e2ad9c6142a8594be54
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:97840ec824e6770da77336f4da31ae61fc2ef5138b44e8ed68289a8d7ec9b661
	- sha256:56e79be40ee6ab7eddb614ca5d26353466aecec57622ce0ab74256d8669a2487

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:49:30.32191526Z
ADD file:41feebce7d0d62961b220ceca4e770a777b72777e8da8a180ad99171c236bb25 in / 
# 2018-12-26T08:49:30.724447534Z
 CMD ["sh"]
# 2018-12-27T06:10:49.825075632Z
 ENV COIN=skycoin
# 2018-12-27T06:10:50.168366637Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T06:10:56.135989072Z
COPY dir:b3f781d3ce79016efa6e1b56d59753eb9b7b4f22fa089e2ea130697a25ae8a57 in / 
# 2018-12-27T06:10:56.335378064Z
 VOLUME [/wallet]
# 2018-12-27T06:10:56.487405269Z
 VOLUME [/data/.skycoin]
# 2018-12-27T06:10:56.637188756Z
 EXPOSE 6000 6420
# 2018-12-27T06:10:56.788680782Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

