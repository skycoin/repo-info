# `skycoin/skycoin:develop-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:8bdc2c8501ea8f40204617fb21eb884b54794ddfda11c0c3a84b554dc072015e
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:97840ec824e6770da77336f4da31ae61fc2ef5138b44e8ed68289a8d7ec9b661
	- sha256:cba683f9e55f5ea9d3910039dae2bcd65071597f0a9723e065aa17ff9899e26c

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-12-26T08:49:30.32191526Z
ADD file:41feebce7d0d62961b220ceca4e770a777b72777e8da8a180ad99171c236bb25 in / 
# 2018-12-26T08:49:30.724447534Z
 CMD ["sh"]
# 2018-12-29T04:00:25.53451283Z
 ENV COIN=skycoin
# 2018-12-29T04:00:25.678739824Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-29T04:00:28.826402855Z
COPY dir:b2baa2019d71d3f5de2c8e4dbef0492350cdf41e23fc9ba092ae6291b2185318 in / 
# 2018-12-29T04:00:29.022896133Z
 VOLUME [/wallet]
# 2018-12-29T04:00:29.185646922Z
 VOLUME [/data/.skycoin]
# 2018-12-29T04:00:29.344323616Z
 EXPOSE 6000 6420
# 2018-12-29T04:00:29.529282613Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

