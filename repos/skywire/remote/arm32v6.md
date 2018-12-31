# `skycoin/skywire:arm32v6`

```console
$ docker pull skycoin/skywire@sha256:4b70c8b07f01fc9610b8761ea346907f08168301389a96c2487793f1d8be5d00
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:712a9a7b47652499257bb96c6066b80042d8fe2616b9225141a21299f317e315
	- sha256:cd4f1ba09358369eb8c6101a8d01e5be41e901e75da027daf703aae7eb39532a
	- sha256:9530e0209c7ebbadfdf6470de8547621cf1a603c739a0719a85b32e645a7600b
	- sha256:243e0b0adfb11710b2457a5c5cf6df52cead94beaaa75fd270de5b98da1d3c8c

- Exposed Ports:
	- 5000/tcp
	- 5998/tcp
	- 6001/tcp
	- 8000/tcp

```dockerfile
# 2018-10-03T07:49:30.844190333Z
ADD file:acc946308a1eec5d1a948cfdbf2e7f4988c3b4a45a2d2934dbe9f063ef53f150 in / 
# 2018-10-03T07:49:31.20867797Z
 CMD ["sh"]
# 2018-12-05T00:29:56.841532987Z
 ENV DATA_DIR=/root/.skywire
# 2018-12-05T00:30:00.644656287Z
COPY multi:d338406f74b37d21088c0355171ebf3d6993d4fd45d5e9f5290f9f5c8870265c in /bin/ 
# 2018-12-05T00:30:01.111469461Z
COPY file:d4e9567533feabaf0668b73309f77359495bdbdca09f18895cc2bc3a602e0745 in . 
# 2018-12-05T00:30:01.433308988Z
COPY dir:ae033e29b2ef3eb5604f074015d67c8e50def53162dfe6eae1abd1eabf16ef3d in /usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager 
# 2018-12-05T00:30:01.614054053Z
 VOLUME [/root/.skywire]
# 2018-12-05T00:30:01.775727294Z
 EXPOSE 5000 5998 6001 8000
# 2018-12-05T00:30:01.93025549Z
 CMD ["manager" "-web-dir" "/usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager"]
```

