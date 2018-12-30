# `skycoin/skycoin:release-v0.24.0-arm32v7`

```console
$ docker pull skycoin/skycoin@sha256:f509660d48b7f38d2d66e164694518dc0e4629b46d2f85d406393771abcefb36
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:cffc3220bc612ae64163608ed7e85b01dbc6f6659f4472f390954fe50eee50d2
	- sha256:9a7695c2096df01b762dec4a24da6eb4f2eb39b3ac3873cfc3b13732fc03c535
	- sha256:67716673bac064cabab960f1c89d34f23360c2d6f7b4808d5e74413a544999ce
	- sha256:8dd0604161f4f98a30ae6bf64bdab1849ec3d245d6f510dea0da111411f2efe5

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-17T11:57:39.207512152Z
ADD file:1f21c472b55a12e2064437c3bc6187bc2b0196f4e79a8cc627f0446b3e427b44 in / 
# 2018-07-17T11:57:39.512790153Z
 CMD ["sh"]
# 2018-07-26T03:32:55.092057963Z
 ENV COIN=skycoin
# 2018-07-26T03:32:55.227595365Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-07-26T03:32:58.515920574Z
COPY multi:6ea4f33b08265989866e5686a6c71fe2fa1e44e8acf6374497029e6b0a4c20f3 in /usr/bin/ 
# 2018-07-26T03:32:59.595370095Z
COPY dir:e7b2faecd7ba7a71d42b003a0d60c0e223b5d05e11fb4af595488117e8e864b3 in /usr/local/skycoin/src/gui/static 
# 2018-07-26T03:32:59.814178092Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-07-26T03:32:59.948470128Z
 VOLUME [/wallet]
# 2018-07-26T03:33:00.091706205Z
 VOLUME [/data/.skycoin]
# 2018-07-26T03:33:00.241470172Z
 EXPOSE 6000 6420
# 2018-07-26T03:33:00.392200731Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

