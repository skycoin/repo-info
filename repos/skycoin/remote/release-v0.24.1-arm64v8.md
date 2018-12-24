# `skycoin/skycoin:release-v0.24.1-arm64v8`

```console
$ docker pull skycoin/skycoin@sha256:ddbe2eb178927ba578bd5618432eea18416c9d3ad3d676af00daf488c9d1298b
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:1ee19af3b1fdda486213722e2b7b59ec3fead666a7fe3449583b7ef4efbbbed3
	- sha256:51abf07a505bd0b986162d1e1f4fc92ddbc84a732dcde5a22da5832af30a4ed1
	- sha256:003fb16bb3773055ab5320fa8b79dc182459efa151099daca1ea3b927fb4e505
	- sha256:5714b475255e964a05e92ce9db372ec301bb4e6016b284dc571a9aedab9370ec
	- sha256:2b59d1fdc064787be1d390911a87efb0f2ee087388fbd660b2b4920b3b7e7dc4

- Exposed Ports:
	- 6000/tcp
	- 6420/tcp

```dockerfile
# 2018-07-31T23:56:28.960481406Z
ADD file:0295fda3cf113807b82120cfe4bc493067e7a2c594ad1a1c1b373c037880582d in / 
# 2018-07-31T23:56:29.591321242Z
 CMD ["sh"]
# 2018-08-01T04:56:51.33138901Z
 ENV COIN=skycoin
# 2018-08-01T04:56:51.469181941Z
 ENV RPC_ADDR=http://0.0.0.0:6420 DATA_DIR=/data/.skycoin WALLET_DIR=/wallet USE_CSRF=1 WALLET_NAME=.wlt
# 2018-08-01T04:56:54.942538817Z
COPY multi:271afd14f9b1dc09989c2b6729d9ae7f1988f12b4bc2ed22a18e08e27c64fe87 in /usr/bin/ 
# 2018-08-01T04:56:56.065421565Z
COPY dir:3f74acf4ef7d770fb19d75efd229e9b3725eb3df4c40bae5e6421d3f6f051c64 in /usr/local/skycoin/src/gui/static 
# 2018-08-01T04:56:56.280333564Z
COPY file:6ac857b94e8b21cfa7f4c9a4d19387c91ec0b0eeb0faf318a16758e7c280e791 in /usr/local/bin/docker_launcher.sh 
# 2018-08-01T04:56:56.749848159Z
COPY dir:99df9ef76559aca77804eda950ec98b8b63c9d5be6dee875bdb8fee63366c792 in /etc/ssl/certs 
# 2018-08-01T04:56:56.896051294Z
 VOLUME [/wallet]
# 2018-08-01T04:56:57.039874537Z
 VOLUME [/data/.skycoin]
# 2018-08-01T04:56:57.210726377Z
 EXPOSE 6000 6420
# 2018-08-01T04:56:57.354124417Z
 ENTRYPOINT ["docker_launcher.sh" "--web-interface-addr=0.0.0.0" "--gui-dir=/usr/local/skycoin/src/gui/static"]
```

