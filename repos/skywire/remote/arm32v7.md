# `skycoin/skywire:arm32v7`

```console
$ docker pull skycoin/skywire@sha256:3a8fe4693df364d0b359b74eea70f7f1a3bc9c42902206e749dab9520b7c92a6
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:5927a247f82f42c844197d3fc8762f2d33a1c4f77a777ec4f7963d17ccb5b24d
	- sha256:4c6e8b0b174b7bbc5ae735ef40b381689c33853d334eb008afd0fb27ec83176e
	- sha256:b5d59197f5de81edaeaede6c1e9f16c843b9632b8f316c8e28e87615198a74d0
	- sha256:a8abf13f08c337f8f962dda9259ff7d4a5a686243d54c5f68ab98ec23069f305

- Exposed Ports:
	- 5000/tcp
	- 5998/tcp
	- 6001/tcp
	- 8000/tcp

```dockerfile
# 2018-10-03T11:57:53.557492063Z
ADD file:c5700f8ddc411006beb98db20df9ab2755a01c7e46cbfa485628aefc635af125 in / 
# 2018-10-03T11:57:54.041198082Z
 CMD ["sh"]
# 2018-12-05T00:31:58.095120625Z
 ENV DATA_DIR=/root/.skywire
# 2018-12-05T00:32:01.904577999Z
COPY multi:7595c2dea0e3327c9a5435134d06e587a0e76f6ab3289bfcb4e1272d91589f52 in /bin/ 
# 2018-12-05T00:32:02.379492685Z
COPY file:1fe7819cf3a83b1c6ca783cac10580c01990980caffe4cc9eec3a41eac409db6 in . 
# 2018-12-05T00:32:02.689778715Z
COPY dir:ae033e29b2ef3eb5604f074015d67c8e50def53162dfe6eae1abd1eabf16ef3d in /usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager 
# 2018-12-05T00:32:02.867357535Z
 VOLUME [/root/.skywire]
# 2018-12-05T00:32:03.018933983Z
 EXPOSE 5000 5998 6001 8000
# 2018-12-05T00:32:03.168882307Z
 CMD ["manager" "-web-dir" "/usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager"]
```

