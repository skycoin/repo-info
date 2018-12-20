# `skycoin/skycoin:develop`

```console
$ docker pull skycoin/skycoin@sha256:dcd054b682d3b2794fa6ce7242337baafc5a926dad5a9d44029e6f6038b9a251
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:8a788232037eaf17794408ff3df6b922a1aedf9ef8de36afdae3ed0b0381907b
	- sha256:e88b175de3d330c9f8a6525f527961ae9187dceae6bcb495173416bf14559fcd

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-02T17:19:34.03981888Z
ADD file:63eebd629a5f7558c361be0305df5f16baac1d3bbec014b7c486e28812441969 in / 
# 2018-10-02T17:19:34.239926273Z
 CMD ["sh"]
# 2018-12-19T03:08:47.492653098Z
 ENV COIN=skycoin
# 2018-12-19T03:08:47.799333482Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-19T03:08:54.528688369Z
COPY dir:ded201cfbb72c9efa3b4067f23bfbc73d9e403b48d412c12a0c5469f8d8f3df8 in / 
# 2018-12-19T03:08:54.961184296Z
 VOLUME [/wallet]
# 2018-12-19T03:08:55.291510917Z
 VOLUME [/data/.skycoin]
# 2018-12-19T03:08:55.724861733Z
 EXPOSE 6000 6420
# 2018-12-19T03:08:56.06463569Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

