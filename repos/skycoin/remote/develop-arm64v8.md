# `skycoin/skycoin:develop-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:c7dc742e77db9f761370ad9668c6c85bb9bf1f808d97dd7f9d97b43196f479d7
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:d74829304bab157c98d0f550e07f335a52c48e3356798b5b989a714848de9bb1
	- sha256:cf47107c4b22549d12d190530ab2f150a336c3759a514e28f6cc4ecb7e46b2b5

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T08:39:59.253094774Z
ADD file:9470afe7e28cc173dd0302df1e0057d3c3f884fc2e7b876e6d5036269bb2ae23 in / 
# 2018-10-03T08:40:00.192238991Z
 CMD ["sh"]
# 2018-12-23T00:38:51.005257353Z
 ENV COIN=skycoin
# 2018-12-23T00:38:51.155566623Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-23T00:38:54.242127129Z
COPY dir:f633c5549a48ab9297c210940eef57522e7740de0551185b39b0c733cc688a01 in / 
# 2018-12-23T00:38:54.435927015Z
 VOLUME [/wallet]
# 2018-12-23T00:38:54.590853373Z
 VOLUME [/data/.skycoin]
# 2018-12-23T00:38:54.765757346Z
 EXPOSE 6000 6420
# 2018-12-23T00:38:54.918691655Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

