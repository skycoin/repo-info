# `skycoin/skycoin:release-v0.24.0-arm32v6`

```console
$ docker pull skycoin/skycoin@sha256:372aa2ae23da9fdc3b427bcdb8404366d64603ddc692d43ec13ae3b2b2244314
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:3e4aa2dc609de7db8c8ab1904307e8f3e90a31cc8fe2e7fc741079689f0714d6
	- sha256:6c551365ff1d82b7952ac771e1c219274f7ee5cb0f871288f8a40d771f04c4cd
	- sha256:2bfb8c052c9a94d4e2d5d77f067a3af0b7777016d65b0bd2c163af5e6d6f09e9
	- sha256:42adafac6d02522808150e4e296ae0469dad24b2935ce0ba049c95a0b0d2c231

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-17T07:49:23.493791451Z
ADD file:10131b7dbf29da8563aa4d23dcc2f13f96b364138ef51c7d50fa3026cf7b3002 in / 
# 2018-07-17T07:49:23.701078075Z
 CMD ["sh"]
# 2018-07-26T03:31:32.342742823Z
 ENV COIN=skycoin
# 2018-07-26T03:31:32.487492283Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-07-26T03:31:35.79350534Z
COPY multi:771daaf1d09beb05c96d5a86a4cec2b207cdaad6442ff38b285c8b7997b3d634 in /usr/bin/ 
# 2018-07-26T03:31:36.854573323Z
COPY dir:e7b2faecd7ba7a71d42b003a0d60c0e223b5d05e11fb4af595488117e8e864b3 in /usr/local/skycoin/src/gui/static 
# 2018-07-26T03:31:37.103400527Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-07-26T03:31:37.239971786Z
 VOLUME [/wallet]
# 2018-07-26T03:31:37.390073775Z
 VOLUME [/data/.skycoin]
# 2018-07-26T03:31:37.54250939Z
 EXPOSE 6000 6420
# 2018-07-26T03:31:37.69981714Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

