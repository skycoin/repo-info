# `skycoin/skycoin:develop`

```console
$ docker pull skycoin/skycoin@sha256:68a2c714fdeecaf8ddb9bf1359493feb87260e89b588a281ae84db48bd40bb0f
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:8a788232037eaf17794408ff3df6b922a1aedf9ef8de36afdae3ed0b0381907b
	- sha256:1a15710b10ce0732d6e3f27460e1f201cd6a5bd2531474297a4ef2cdd785c1b3

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-02T17:19:34.03981888Z
ADD file:63eebd629a5f7558c361be0305df5f16baac1d3bbec014b7c486e28812441969 in / 
# 2018-10-02T17:19:34.239926273Z
 CMD ["sh"]
# 2018-12-23T00:27:54.777159893Z
 ENV COIN=skycoin
# 2018-12-23T00:27:55.23074728Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-23T00:28:02.242867831Z
COPY dir:93be69b8cb4cc3737bb3968251a6779227be9e7053fcb23af8827b36cd7173a0 in / 
# 2018-12-23T00:28:02.648640899Z
 VOLUME [/wallet]
# 2018-12-23T00:28:02.990111194Z
 VOLUME [/data/.skycoin]
# 2018-12-23T00:28:03.411439817Z
 EXPOSE 6000 6420
# 2018-12-23T00:28:03.68345737Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

