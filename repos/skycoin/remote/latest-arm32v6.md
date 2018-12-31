# `skycoin/skycoin:latest-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:53a99a29b3ce2a708313c180460c9c7272549a9764bab6ef0bd901f0456675c3
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:97840ec824e6770da77336f4da31ae61fc2ef5138b44e8ed68289a8d7ec9b661
	- sha256:68a51b3a40bd40e98d876af30292eb1a9bf1dac9284d7d8a2fece631466a28af

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:49:30.32191526Z
ADD file:41feebce7d0d62961b220ceca4e770a777b72777e8da8a180ad99171c236bb25 in / 
# 2018-12-26T08:49:30.724447534Z
 CMD ["sh"]
# 2018-12-27T05:50:35.300733223Z
 ENV COIN=skycoin
# 2018-12-27T05:50:35.604664061Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-27T05:50:41.61391399Z
COPY dir:b3f781d3ce79016efa6e1b56d59753eb9b7b4f22fa089e2ea130697a25ae8a57 in / 
# 2018-12-27T05:50:42.831347167Z
 VOLUME [/wallet]
# 2018-12-27T05:50:43.110901302Z
 VOLUME [/data/.skycoin]
# 2018-12-27T05:50:43.480880017Z
 EXPOSE 6000 6420
# 2018-12-27T05:50:43.76577663Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

