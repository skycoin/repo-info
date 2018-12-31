# `skycoin/skycoin-explorer:latest-arm64v8`

```console
$ docker pull skycoin/skycoin-explorer@sha256:2c117a5ef927a79ee823258d2180729d965a9c3422bb6ccc933a770193d1a498
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:23bc2b70b2014dec0ac22f27bb93e9babd08cdd6f1115d0c955b9ff22b382f5a
	- sha256:fb155c02393b804e9f4a19fd27071ee8970139d301df936a96148207e1c0e7a9
	- sha256:38157c24e51ac0d5efbe1aa231ac3a69bab280b74310e78cabab651fb936fbe0

- Exposed Ports:
	- 8001/tcp

```dockerfile
# 2018-12-26T08:20:42.687925672Z
ADD file:ce026b62356eec3ad1214f92be2c9dc063fe205bd5e600be3492c4dfb17148bd in / 
# 2018-12-26T08:20:42.831353376Z
 CMD ["sh"]
# 2018-12-29T02:53:17.889744349Z
COPY file:f67a3eaac8ec84e5e4c07ca4ff4d98d1ae7250cfdcb4e99f5b74969c7655a9ff in /usr/bin/ 
# 2018-12-29T02:53:18.699992183Z
COPY dir:fdf3774968032995070440d1d3872cddd0a1ef58e16520c9fff82d7a9183a7d3 in ./dist 
# 2018-12-29T02:53:18.861918033Z
 ENV EXPLORER_HOST=0.0.0.0:8001 SKYCOIN_ADDRESS=http://127.0.0.1:6420
# 2018-12-29T02:53:19.002311341Z
 EXPOSE 8001
# 2018-12-29T02:53:19.141860805Z
 ENTRYPOINT ["/usr/bin/skycoin-explorer"]
```

