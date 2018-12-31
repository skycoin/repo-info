# `skycoin/skycoin-explorer:develop`

```console
$ docker pull skycoin/skycoin-explorer@sha256:e8ae14f909063b64eca53bfd48eb2fb079dc39a804382ac7dcd93134ec0fbc9b
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:23bc2b70b2014dec0ac22f27bb93e9babd08cdd6f1115d0c955b9ff22b382f5a
	- sha256:6ba2140ce46a4c12600a3219888825f0046579798d553fff5cc6d133994f44e2
	- sha256:9066325b7a93e0d6722334081cd0cf065344213ff1fe44e5535a787b16692fa2

- Exposed Ports:
	- 8001/tcp

```dockerfile
# 2018-12-26T08:20:42.687925672Z
ADD file:ce026b62356eec3ad1214f92be2c9dc063fe205bd5e600be3492c4dfb17148bd in / 
# 2018-12-26T08:20:42.831353376Z
 CMD ["sh"]
# 2018-12-28T10:55:25.249655326Z
COPY file:f67a3eaac8ec84e5e4c07ca4ff4d98d1ae7250cfdcb4e99f5b74969c7655a9ff in /usr/bin/ 
# 2018-12-28T10:55:26.099649548Z
COPY dir:adb858dc184fb4f927e8877de19b5ea00e2299c5a35e18b615e6c5e56dc53e04 in ./dist 
# 2018-12-28T10:55:26.247292204Z
 ENV EXPLORER_HOST=0.0.0.0:8001 SKYCOIN_ADDRESS=http://127.0.0.1:6420
# 2018-12-28T10:55:26.392396658Z
 EXPOSE 8001
# 2018-12-28T10:55:26.559028497Z
 ENTRYPOINT ["/usr/bin/skycoin-explorer"]
```

