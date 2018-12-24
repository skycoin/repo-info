# `skycoin/skycoin:release-v0.24.1-arm32v5`

```console
$ docker pull skycoin/skycoin@sha256:d40bb0da008fc2e666bab1303db1544e33a14c303fac1e2387063001141f7e29
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:4b49070d6b3dedcd6252d679694640ccbdbb07bad1e651e1f3a5e1fdcd9e0343
	- sha256:efb842c27364e7cdf7be993db54a2e51aed7b0ae402a1d5efc760543866ea486
	- sha256:683c1f5ac2cce510f875d2a6efe362fd6a9f8de4b6999e62dc4d2ce078de8f0d
	- sha256:5a641c850337edfecb6d688ac0399617f854a812462060c898356b308c306db1
	- sha256:69e43798c399d59c57578ea4988b06ce7a29840844ab653565bf283afb21a26a

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-31T23:55:48.499339278Z
ADD file:0d69e4064dd6a737058680865cd8b6e5b677ce952a03107339adc8c2aa03517c in / 
# 2018-07-31T23:55:48.77785221Z
 CMD ["sh"]
# 2018-08-01T04:51:57.158076462Z
 ENV COIN=skycoin
# 2018-08-01T04:51:57.291829573Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-08-01T04:52:00.582796954Z
COPY multi:278c42f9d1322aac9768e220b11264dab3790b8623be56282cfffdfd55853ace in /usr/bin/ 
# 2018-08-01T04:52:01.676095444Z
COPY dir:3f74acf4ef7d770fb19d75efd229e9b3725eb3df4c40bae5e6421d3f6f051c64 in /usr/local/skycoin/src/gui/static 
# 2018-08-01T04:52:01.901078433Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-08-01T04:52:02.385909957Z
COPY dir:99df9ef76559aca77804eda950ec98b8b63c9d5be6dee875bdb8fee63366c792 in /etc/ssl/certs 
# 2018-08-01T04:52:02.541204621Z
 VOLUME [/wallet]
# 2018-08-01T04:52:02.68743013Z
 VOLUME [/data/.skycoin]
# 2018-08-01T04:52:02.834270678Z
 EXPOSE 6000 6420
# 2018-08-01T04:52:03.002635089Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

