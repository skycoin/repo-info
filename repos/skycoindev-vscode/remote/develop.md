# `skycoin/skycoindev-vscode:develop`

```console
$ docker pull skycoin/skycoindev-vscode@sha256:10c93e8f650d8f6d2a2acb675270ebf2d7074e7551e260ac315c4a354ebfbfaf
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:f715ed19c28b66943ac8bc12dbfb828e8394de2530bbaf1ecce906e748e4fdff
	- sha256:8bb25f9cdc41e7d085033af15a522973b44086d6eedd24c11cc61c9232324f77
	- sha256:08a01612ffca33483a1847c909836610610ce523fb7e1aca880140ee84df23e9
	- sha256:1191b3f5862aa9231858809b7ac8b91c0b727ce85c9b3279932f0baacc92967d
	- sha256:52da4d4dcf59a2a01a4c4928516bf922944775862547dad6142bc477bbbdfa47
	- sha256:8efa819f049ca8d7f0c8e41f77a05a97cdd388c6b00d23e89bf8ac62d350ee66
	- sha256:aa2bb1d487249e60e0d026718fe1925ce0eed4862902a1c026004f50c9f623b3
	- sha256:93750279a15ec4236e8d5e26104139943d119ac645b948f35eab93cdb99173db
	- sha256:a71c80b619a78999075cfdf08989fd838da51a6d8adce721c2406f692ccaaa85
	- sha256:dc6a7ded09ac23e3c611ada109c997fd3d77d475dbc98882bc223f84daa86338
	- sha256:de38715fd6f4a7054c444e86755ded9fbf60d7bb11ee66777b46b3d5bae0f8e9
	- sha256:69844665b7aeb9f34a0ef2af7d75180d86c5f6de64eba4ac1e0cf5e46b5dc7fe
	- sha256:0a346f5c97bd9972a7f2d0b2d71ede1a78e31fbf965074a1b112e2482c638a5e
	- sha256:8ccd67f6dd5fc5f82f77619094de5fe9679ca05c02fbea6753b50ca8be825f07
	- sha256:22ae0a6426103d97a0ffff650a8bb6b3fe6b6ed7e1784caa85b1874dbb54a0f3
	- sha256:e02c8ca8db6a9edb34c3e55c82d5c568c950aa659d48d08825273c8bb614eece
	- sha256:5d5ff637cdc943d63f64434ae881402ca1f8e5c2b90974b04f87743460104f89
	- sha256:d6d7f50131e244da129810a3f26064bcc44a371146ead12b282180a759a83284
	- sha256:3ead97d39802181e1bd55acb02d779ee782da45e57a427cbf532740caba4bdd8
	- sha256:f43695154d9edfbdfb5ce05cbfadfb5cb178698bfd89ed51a103b09becf51c2f
	- sha256:e891fb0ff95016782009e27e3e20126b8faf423f2364b1b7170eb45544a43208
	- sha256:93e23e025c46bbde526943f3f991041b830b39de5f1c9d8102977bddedad51dd
	- sha256:9eea46d0211d39249fb6d61b0e5fecf09b76ec7050e746f6adf18b731c9a9aab

- Exposed Ports:

```dockerfile
# 2018-10-15T23:24:20.7838109Z
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# 2018-10-15T23:24:21.111611143Z
 CMD ["bash"]
# 2018-10-16T01:00:49.945915631Z
/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ca-certificates curl netbase wget && rm -rf /var/lib/apt/lists/*
# 2018-10-16T01:00:57.258682859Z
/bin/sh -c set -ex; if ! command -v gpg > /dev/null; then apt-get update; apt-get install -y --no-install-recommends gnupg dirmngr ; rm -rf /var/lib/apt/lists/*; fi
# 2018-10-16T01:01:29.418111504Z
/bin/sh -c apt-get update && apt-get install -y --no-install-recommends bzr git mercurial openssh-client subversion procps && rm -rf /var/lib/apt/lists/*
# 2018-10-16T08:42:27.8302524Z
/bin/sh -c apt-get update && apt-get install -y --no-install-recommends g++ gcc libc6-dev make pkg-config && rm -rf /var/lib/apt/lists/*
# 2018-11-02T23:50:27.150595639Z
 ENV GOLANG_VERSION=1.11.2
# 2018-11-02T23:50:36.313137676Z
/bin/sh -c set -eux; dpkgArch="$(dpkg --print-architecture)"; case "${dpkgArch##*-}" in amd64) goRelArch='linux-amd64'; goRelSha256='1dfe664fa3d8ad714bbd15a36627992effd150ddabd7523931f077b3926d736d' ;; armhf) goRelArch='linux-armv6l'; goRelSha256='b9d16a8eb1f7b8fdadd27232f6300aa8b4427e5e4cb148c4be4089db8fb56429' ;; arm64) goRelArch='linux-arm64'; goRelSha256='98a42b9b8d3bacbcc6351a1e39af52eff582d0bc3ac804cd5a97ce497dd84026' ;; i386) goRelArch='linux-386'; goRelSha256='e74f2f37b43b9b1bcf18008a11e0efb8921b41dff399a4f48ac09a4f25729881' ;; ppc64el) goRelArch='linux-ppc64le'; goRelSha256='23291935a299fdfde4b6a988ce3faa0c7a498aab6d56bbafbf1e7476468529a3' ;; s390x) goRelArch='linux-s390x'; goRelSha256='a67ef820ef8cfecc8d68c69dd5bf513aaf647c09b6605570af425bf5fe8a32f0' ;; *) goRelArch='src'; goRelSha256='042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550'; echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; esac; url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; wget -O go.tgz "$url"; echo "${goRelSha256} *go.tgz" | sha256sum -c -; tar -C /usr/local -xzf go.tgz; rm go.tgz; if [ "$goRelArch" = 'src' ]; then echo >&2; echo >&2 'error: UNIMPLEMENTED'; echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; echo >&2; exit 1; fi; export PATH="/usr/local/go/bin:$PATH"; go version
# 2018-11-02T23:50:36.783097869Z
 ENV GOPATH=/go
# 2018-11-02T23:50:36.974286424Z
 ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# 2018-11-02T23:50:37.655698688Z
/bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# 2018-11-02T23:50:37.874692807Z
WORKDIR /go
# 2018-11-05T09:02:54.534779671Z
/bin/sh -c set -ex; apt-get update; apt-get install -y --no-install-recommends autoconf automake bzip2 dpkg-dev file g++ gcc imagemagick libbz2-dev libc6-dev libcurl4-openssl-dev libdb-dev libevent-dev libffi-dev libgdbm-dev libgeoip-dev libglib2.0-dev libjpeg-dev libkrb5-dev liblzma-dev libmagickcore-dev libmagickwand-dev libncurses5-dev libncursesw5-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libtool libwebp-dev libxml2-dev libxslt-dev libyaml-dev make patch xz-utils zlib1g-dev build-essential ; apt-get clean; rm -rf /var/lib/apt/lists/*
# 2018-11-05T09:02:56.317255381Z
/bin/sh -c groupadd --gid 2000 node && useradd --uid 2000 --gid node --shell /bin/bash --create-home node
# 2018-11-05T09:03:03.084940407Z
/bin/sh -c set -ex && for key in 94AE36675C464D64BAFA68DD7434390BDBE9B9C5 FD3A5288F042B6850C66B31F09FE44734EB7990E 71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 DD8F2338BAE7501E3DD5AC78C273792F7D83545D C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 B9AE9905FFD7803F25714661B63B535A4C206CA9 56730D5401028683275BD23C23EFEFE93C4CFFFE 77984A986EBC2AA786BC0F66B01FBB92821C587A ; do gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" || gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" || gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ; done
# 2018-11-05T09:03:03.233733824Z
 ENV NODE_VERSION=10.2.1
# 2018-11-05T09:03:12.212809171Z
/bin/sh -c ARCH= && dpkgArch="$(dpkg --print-architecture)" && case "${dpkgArch##*-}" in amd64) ARCH='x64';; ppc64el) ARCH='ppc64le';; s390x) ARCH='s390x';; arm64) ARCH='arm64';; armhf) ARCH='armv7l';; i386) ARCH='x86';; *) echo "unsupported architecture"; exit 1 ;; esac && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz" && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c - && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# 2018-11-05T09:03:12.642421317Z
 ENV YARN_VERSION=1.7.0
# 2018-11-05T09:03:16.612088041Z
/bin/sh -c set -ex && for key in 6A010C5166006599AA17F08146C2130DFD2497F5 ; do gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" || gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" || gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ; done && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz" && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc" && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz && mkdir -p /opt && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/ && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# 2018-11-05T09:06:32.254593623Z
/bin/sh -c set -ex ; apt-get update ; apt-get install -y --no-install-recommends cmake libpcre3-dev gdbserver gdb vim less ctags vim-scripts screen sudo doxygen valgrind bsdmainutils texlive-latex-base ; apt-get clean ; rm -rf /var/lib/apt/lists/* ; npm install moxygen -g ; echo 'Installing Criterion ...' ; git clone --recurse-submodules -j8 https://github.com/skycoin/Criterion /go/Criterion ; cd /go/Criterion ; cmake . ; make install ; rm -r /go/Criterion ; echo 'Success nstalling Criterion ...'
# 2018-11-05T09:09:24.370541112Z
/bin/sh -c go get -u github.com/derekparker/delve/cmd/dlv && go get -u github.com/FiloSottile/vendorcheck && go get -u github.com/alecthomas/gometalinter && gometalinter --vendored-linters --install && go get -u github.com/zmb3/gogetdoc && go get -u golang.org/x/tools/cmd/guru && go get -u github.com/davidrjenni/reftools/cmd/fillstruct && go get -u github.com/rogpeppe/godef && go get -u github.com/fatih/motion && go get -u github.com/nsf/gocode && go get -u github.com/jstemmer/gotags && go get -u github.com/josharian/impl && go get -u github.com/fatih/gomodifytags && go get -u github.com/dominikh/go-tools/cmd/keyify && go get -u golang.org/x/tools/cmd/gorename && go get -u github.com/klauspost/asmfmt/cmd/asmfmt && go get -u github.com/vektra/mockery/.../ && go get -u github.com/wadey/gocovmerge && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
# 2018-11-05T09:09:35.072600703Z
/bin/sh -c git clone https://github.com/fatih/vim-go /usr/share/vim/vim80/pack/dev/start/vim-go && git clone https://github.com/tpope/vim-fugitive /usr/share/vim/vim80/pack/dev/start/vim-fugitive && git clone https://github.com/Shougo/vimshell.vim /usr/share/vim/vim80/pack/dev/start/0vimshell && git clone https://github.com/Shougo/vimproc.vim /usr/share/vim/vim80/pack/dev/start/0vimproc && git clone https://github.com/w0rp/ale.git /usr/share/vim/vim80/pack/dev/start/ale && cd /usr/share/vim/vim80/pack/dev/start/0vimproc && make ; git clone https://github.com/iberianpig/tig-explorer.vim.git /tmp/tig-explorer; cp /tmp/tig-explorer/autoload/tig_explorer.vim /usr/share/vim/vim80/autoload; cp /tmp/tig-explorer/plugin/tig_explorer.vim /usr/share/vim/vim80/plugin; rm -rf /tmp/tig-explorer
# 2018-11-05T09:11:20.552070235Z
/bin/sh -c cd /tmp/; wget http://prdownloads.sourceforge.net/swig/swig-3.0.12.tar.gz && tar -zxf swig-3.0.12.tar.gz ; cd swig-3.0.12 ; ./configure --prefix=/usr && make && make install && rm -rf /tmp/swig-*
# 2018-11-05T09:11:20.745824211Z
 ENV GOLANGCI_LINT=1.10.2
# 2018-11-05T09:11:23.929768075Z
/bin/sh -c curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | bash -s -- -b $GOPATH/bin v$GOLANGCI_LINT
# 2018-11-05T09:11:24.091596319Z
WORKDIR /go/src/github.com/skycoin
# 2018-11-05T09:11:25.259022942Z
 VOLUME [/go/src/]
# 2018-11-05T09:11:26.712937423Z
 ENV LD_LIBRARY_PATH=/usr/local/lib
# 2018-12-29T04:32:07.844877913Z
 ARG BDATE
# 2018-12-29T04:32:11.001240413Z
 ARG SCOMMIT
# 2018-12-29T04:32:14.10640747Z
 ARG VS_EXTENSIONS
# 2018-12-29T04:32:17.276267164Z
 LABEL org.label-schema.name=skycoindev-cli org.label-schema.description=Docker image with go, node, dev tools and Visual Studio Code for Skycoin developers org.label-schema.vendor=Skycoin project org.label-schema.url=skycoin.net org.label-schema.version=1.0.0-rc.1 org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-29T04:32:03Z org.label-schema.vcs-url=https://github.com/skycoin/skycoin.git org.label-schema.vcs-ref=943c61fdf38f5b785ad6bb5af052b08a2438a84c org.label-schema.usage=https://github.com/skycoin/skycoin/blob/943c61fdf38f5b785ad6bb5af052b08a2438a84c/docker/images/dev-vscode/README.md org.label-schema.docker.cmd=xhost +; cd src; docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v :/go/src -w /go/src -e DISPLAY= skycoin/skycoindev-vscode:develop
# 2018-12-29T04:32:20.412886364Z
 ENV DEBIAN_FRONTEND=noninteractive
# 2018-12-29T04:32:23.491824027Z
 ENV HOME=/home/skydev
# 2018-12-29T04:32:28.8960284Z
|3 BDATE=2018-12-29T04:32:03Z SCOMMIT=943c61fdf38f5b785ad6bb5af052b08a2438a84c VS_EXTENSIONS=ms-vscode.Go windmilleng.vscode-go-autotest defaltd.go-coverage-viewer eg2.tslint eamodio.gitlens vscodevim.vim /bin/sh -c useradd --create-home --home-dir $HOME skydev && chown -R skydev:skydev $HOME
# 2018-12-29T04:36:52.395504564Z
|3 BDATE=2018-12-29T04:32:03Z SCOMMIT=943c61fdf38f5b785ad6bb5af052b08a2438a84c VS_EXTENSIONS=ms-vscode.Go windmilleng.vscode-go-autotest defaltd.go-coverage-viewer eg2.tslint eamodio.gitlens vscodevim.vim /bin/sh -c apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg apt-utils libasound2 libatk1.0-0 libcairo2 libcups2 libexpat1 libfontconfig1 libfreetype6 libgtk2.0-0 libpango-1.0-0 libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 openssh-client xdg-utils dconf-editor dbus-x11 libfile-mimeinfo-perl xdg-user-dirs xsel --no-install-recommends && mkdir -p $HOME/.cache/dconf && mkdir -p $HOME/.config/dconf && chown skydev:skydev -R $HOME/.config && chown skydev:skydev -R $HOME/.cache && go get -v github.com/ramya-rao-a/go-outline && go get -v github.com/uudashr/gopkgs/cmd/gopkgs && go get -v github.com/acroca/go-symbols && go get -v github.com/stamblerre/gocode && go get -v github.com/ianthehat/godef && go get -v github.com/sqs/goreturns && ln -s /go/bin/gocode /go/bin/gocode-gomod && ln -s /go/bin/godef /go/bin/godef-gomod && npm install -g tslint typescript && curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add - && echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list && apt-get update && apt-get -y install code && for ext in $VS_EXTENSIONS; do code --user-data-dir $HOME --install-extension $ext; done && apt clean && rm -rf /var/lib/apt/lists/*
# 2018-12-29T04:36:58.783738884Z
 USER skydev
# 2018-12-29T04:37:03.412184718Z
|3 BDATE=2018-12-29T04:32:03Z SCOMMIT=943c61fdf38f5b785ad6bb5af052b08a2438a84c VS_EXTENSIONS=ms-vscode.Go windmilleng.vscode-go-autotest defaltd.go-coverage-viewer eg2.tslint eamodio.gitlens vscodevim.vim /bin/sh -c xdg-user-dirs-update --force
# 2018-12-29T04:37:06.468921914Z
 USER root
# 2018-12-29T04:37:07.032640704Z
COPY file:1dbf5f997aae248050da521174379ef7ab64a6f3a8dc4b9396aa42634ba7d49b in /usr/local/bin/start.sh 
# 2018-12-29T04:37:09.160768549Z
|3 BDATE=2018-12-29T04:32:03Z SCOMMIT=943c61fdf38f5b785ad6bb5af052b08a2438a84c VS_EXTENSIONS=ms-vscode.Go windmilleng.vscode-go-autotest defaltd.go-coverage-viewer eg2.tslint eamodio.gitlens vscodevim.vim /bin/sh -c ln -s usr/local/bin/start.sh /
# 2018-12-29T04:37:10.793616659Z
WORKDIR /go/src/github.com/skycoin/
# 2018-12-29T04:37:12.284842505Z
 ENTRYPOINT ["start.sh"]
```

