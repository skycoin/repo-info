# `skycoin/skycoin:develop-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:935fce4c3d88123bc38e0538b6f4c8c6310af1a0c16f219e039015e40cd31a51
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:5927a247f82f42c844197d3fc8762f2d33a1c4f77a777ec4f7963d17ccb5b24d
	- sha256:7cfe0dfa8d6173a6a858322c56e5db601ee263a7992eca49d2a4460557fcd7aa

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-10-03T11:57:53.557492063Z
ADD file:c5700f8ddc411006beb98db20df9ab2755a01c7e46cbfa485628aefc635af125 in / 
# 2018-10-03T11:57:54.041198082Z
 CMD ["sh"]
# 2018-12-23T00:36:57.255253889Z
 ENV COIN=skycoin
# 2018-12-23T00:36:57.404643038Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet WALLET_NAME=.wlt
# 2018-12-23T00:37:00.398167022Z
COPY dir:c95bd35a613932c06d4df8a6a348ffa3d2394b7c3fc16cd5f690a747d9aa98ad in / 
# 2018-12-23T00:37:00.591732969Z
 VOLUME [/wallet]
# 2018-12-23T00:37:00.744041616Z
 VOLUME [/data/.skycoin]
# 2018-12-23T00:37:00.897614779Z
 EXPOSE 6000 6420
# 2018-12-23T00:37:01.048474565Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

