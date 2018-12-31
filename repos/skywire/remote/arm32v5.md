# `skycoin/skywire:arm32v5`

```console
$ docker pull skycoin/skywire@sha256:940163a113b19a9cf46b912b2f952eb2cdd00c440d1570334f3953e388f75e10
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:fb507372b39cf5291c71b33dab6583e02c67efa269417cf7a266632d5b84c4b6
	- sha256:42ca44b2c5c4cae9b07a177b104921a692b0ebd08bdb4926744edc2938a0c309
	- sha256:736fa933e53b9b8c7a10ca71de663a70acdb2b6502f35364e5bda6a420d144e3
	- sha256:ceb9392fb86edf35baf10be954a3dbcae55affc649703dc913b37984f3577bf0

- Exposed Ports:
	- 5000/tcp
	- 5998/tcp
	- 6001/tcp
	- 8000/tcp

```dockerfile
# 2018-10-03T08:48:47.7347398Z
ADD file:a2c905afa6fd9c1750578267a9c9c479a04a597c738f6a6e7b419ced5a533aa1 in / 
# 2018-10-03T08:48:48.068409713Z
 CMD ["sh"]
# 2018-12-05T00:27:54.616982407Z
 ENV DATA_DIR=/root/.skywire
# 2018-12-05T00:27:58.464317034Z
COPY multi:9584a57b913684f38b77b2a8a2631c5e86efd4402f84ddc53eebfd31b814cef9 in /bin/ 
# 2018-12-05T00:27:58.945985904Z
COPY file:1dc4af8da6bb51b8321ee1e532cfa861b63fffe08646c87f4c346885f9e5d4dc in . 
# 2018-12-05T00:27:59.284229049Z
COPY dir:ae033e29b2ef3eb5604f074015d67c8e50def53162dfe6eae1abd1eabf16ef3d in /usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager 
# 2018-12-05T00:27:59.427736444Z
 VOLUME [/root/.skywire]
# 2018-12-05T00:27:59.58587174Z
 EXPOSE 5000 5998 6001 8000
# 2018-12-05T00:27:59.734240652Z
 CMD ["manager" "-web-dir" "/usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager"]
```

