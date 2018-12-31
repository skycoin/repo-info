# `skycoin/bbs:latest`

```console
$ docker pull skycoin/bbs@sha256:3c3a609d2820cdeb3199c13cf8c0c0b32561a93bcf35fcf845f15d675e16c5e2
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:cd7100a72410606589a54b932cabd804a17f9ae5b42a1882bd56d263e02b6215
	- sha256:0cde19bdaa8b174ceb95f6a7e7a4f3b49372e55ddeb143cf371b1389b2d5b126
	- sha256:6b81f51d0826bb2e70b9a5e0fc228f08d30656fd71fdea3dcaac528d4ba0b2d4
	- sha256:c290e53e7e3897e72e65a9597aafb55599e7bd47e6d8392a850ec11805f31493
	- sha256:5d533afa571e8781d3051192e0c443303afd6eedae691a53fb22c6f3deae4bc4
	- sha256:66129c18f90f739cf132c35156b37d8f9880dba2142ab1972aa33a01428c97c0

- Exposed Ports:
	- 8080/tcp
	- 8998/tcp

```dockerfile
# 2018-01-09T21:10:58.365737589Z
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# 2018-01-09T21:10:58.579708634Z
 CMD ["/bin/sh"]
# 2018-01-10T10:45:52.038519786Z
/bin/sh -c adduser -D skycoin
# 2018-01-10T10:45:52.960228248Z
/bin/sh -c mkdir /data
# 2018-01-10T10:45:53.534234194Z
/bin/sh -c chown skycoin: /data
# 2018-01-10T10:45:53.680654172Z
 USER [skycoin]
# 2018-01-10T10:45:56.908585454Z
COPY multi:e61ded6819475ca0bcd1700ee178a0998aac2d6236da6354c62ff983cdefdb1f in /usr/bin/ 
# 2018-01-10T10:45:57.427671053Z
COPY dir:e815ca41f3bbdf379e8277e04f3ac34bdf80ac04d3ea27928311bf33e0b16f1f in /usr/local/bbs/static 
# 2018-01-10T10:45:57.53926253Z
 VOLUME [/data]
# 2018-01-10T10:45:57.676859022Z
WORKDIR /
# 2018-01-10T10:45:57.832992516Z
 EXPOSE 8080/tcp 8998/tcp
# 2018-01-10T10:45:57.962048496Z
 CMD ["bbsnode" "--public=true" "--memory=false" "--config-dir=/data" "--cxo-port=8998" "--enforced-messenger-addresses=35.227.102.45:8005" "--enforced-subscriptions=03588a2c8085e37ece47aec50e1e856e70f893f7f802cb4f92d52c81c4c3212742" "--web-port=8080" "--web-gui-dir=/usr/local/bbs/static"]
```

