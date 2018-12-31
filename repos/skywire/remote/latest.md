# `skycoin/skywire:latest`

```console
$ docker pull skycoin/skywire@sha256:acfe1b5c63ab2159726ef05836b70d89aa0f052530b3750ff2ef89dd3e296d3f
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:b8873621dfbc06d563774bb1b02a4474f35028018407715a5d97909f8f3891c1
	- sha256:7859e2c7377da44d913023dd8eaa078c5708cd5b2bf52171984368fd1d95d62b
	- sha256:2deda3712b2714a5e40230d00a3e02a375bb3f05ec094381cdb1c0749804558a
	- sha256:8f8af0b5fcb296dc8f7c0eb8b5c8fe029b075559cd651e5906e49e3d438cb81c

- Exposed Ports:
	- 5000/tcp
	- 5998/tcp
	- 6001/tcp
	- 8000/tcp

```dockerfile
# 2018-10-02T17:19:55.723313801Z
ADD file:3b0409820c0c5411d87c176e8fc77a42ce0c09a284b544e96c74a504184d9813 in / 
# 2018-10-02T17:20:01.659197413Z
 CMD ["sh"]
# 2018-12-05T00:25:51.209801834Z
 ENV DATA_DIR=/root/.skywire
# 2018-12-05T00:25:55.411704298Z
COPY multi:5c4c6372a2e1a1e7fd5a516ac20db6db85cf3a1ef1b20254235bb09693074038 in /bin/ 
# 2018-12-05T00:25:55.898213791Z
COPY file:04df120cc1584b7b790a2736f80c3f4f2336b10f36526b2e779416340b6395a5 in . 
# 2018-12-05T00:25:56.252397288Z
COPY dir:ae033e29b2ef3eb5604f074015d67c8e50def53162dfe6eae1abd1eabf16ef3d in /usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager 
# 2018-12-05T00:25:56.407676514Z
 VOLUME [/root/.skywire]
# 2018-12-05T00:25:56.586265153Z
 EXPOSE 5000 5998 6001 8000
# 2018-12-05T00:25:56.861189638Z
 CMD ["manager" "-web-dir" "/usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager"]
```

