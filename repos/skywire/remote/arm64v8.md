# `skycoin/skywire:arm64v8`

```console
$ docker pull skycoin/skywire@sha256:4c6b47a0a2acbed881bf6fe1f6e9d4b9fae92230499e08a9a7332bedccf8ba09
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:d74829304bab157c98d0f550e07f335a52c48e3356798b5b989a714848de9bb1
	- sha256:32875d874f46ebb6e8489cd9903e1f2d6b86a1fe86c85215e832e40b5bfdde78
	- sha256:27fc09e2e6ad8c06d09569dc89f665474a62775c59fef1ce363b62b33ead19ff
	- sha256:def7096450fe9ee49eb76e7af416e20de2edbfc278ed4f81534706b8bc90be40

- Exposed Ports:
	- 5000/tcp
	- 5998/tcp
	- 6001/tcp
	- 8000/tcp

```dockerfile
# 2018-10-03T08:39:59.253094774Z
ADD file:9470afe7e28cc173dd0302df1e0057d3c3f884fc2e7b876e6d5036269bb2ae23 in / 
# 2018-10-03T08:40:00.192238991Z
 CMD ["sh"]
# 2018-12-05T00:34:01.700146718Z
 ENV DATA_DIR=/root/.skywire
# 2018-12-05T00:34:05.735809535Z
COPY multi:6f32788e319d91ab669c5831a1d0a787d04616971cdfa2ba4e5da67a134e87b7 in /bin/ 
# 2018-12-05T00:34:06.225756888Z
COPY file:0e6cdd763993f7c4b936a19cb62ea08c4d660e91092bbbcc4ee3dd11869c4e92 in . 
# 2018-12-05T00:34:06.540241313Z
COPY dir:ae033e29b2ef3eb5604f074015d67c8e50def53162dfe6eae1abd1eabf16ef3d in /usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager 
# 2018-12-05T00:34:06.6880107Z
 VOLUME [/root/.skywire]
# 2018-12-05T00:34:06.86851625Z
 EXPOSE 5000 5998 6001 8000
# 2018-12-05T00:34:07.018670466Z
 CMD ["manager" "-web-dir" "/usr/local/skycoin/net/skycoin-messenger/monitor/web/dist-manager"]
```

