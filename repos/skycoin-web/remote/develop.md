# `skycoin/skycoin-web:develop`

```console
$ docker pull skycoin/skycoin-web@sha256:fc9780364d2ac0038afa198179558e2a6a1ade443d7688e658d93da78db9d5da
```

- Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`

- Platform: 
	- linux, amd64

- Layers:
	- sha256:df64d3292fd6194b7865d7326af5255db6d81e9df29f48adde61a918fbd8c332
	- sha256:5f6acae4a5eb65335aa694adb587eceb243739d08c8688d5b2a6382182a80010
	- sha256:aa84c03b5202eb69a3f7fcab6a2ec0743d58babeb34db4d9a8fdee88627296ac
	- sha256:27c0b07c1b339ba7f251bff77b03a00854d996bbfb5377b11099b2375a075266
	- sha256:2d08dc4eadd6980b2c6bfec3357b2080bd4b2ca24e4fc9c8de3c88aeaf2d126e
	- sha256:f0bdcf9e207744f54f9c35ba00de82f631bc2a918b0916161ae215ded5708744

- Exposed Ports:
	- 80/tcp

```dockerfile
# 2018-09-11T22:19:50.165674013Z
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# 2018-09-11T22:19:50.322783064Z
 CMD ["/bin/sh"]
# 2018-09-25T17:22:12.727145375Z
 LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# 2018-11-27T22:23:22.66249904Z
 ENV NGINX_VERSION=1.15.7
# 2018-11-27T22:24:30.396372012Z
/bin/sh -c GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 && CONFIG=" --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --modules-path=/usr/lib/nginx/modules --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --http-client-body-temp-path=/var/cache/nginx/client_temp --http-proxy-temp-path=/var/cache/nginx/proxy_temp --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp --http-scgi-temp-path=/var/cache/nginx/scgi_temp --user=nginx --group=nginx --with-http_ssl_module --with-http_realip_module --with-http_addition_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with-http_mp4_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_random_index_module --with-http_secure_link_module --with-http_stub_status_module --with-http_auth_request_module --with-http_xslt_module=dynamic --with-http_image_filter_module=dynamic --with-http_geoip_module=dynamic --with-threads --with-stream --with-stream_ssl_module --with-stream_ssl_preread_module --with-stream_realip_module --with-stream_geoip_module=dynamic --with-http_slice_module --with-mail --with-mail_ssl_module --with-compat --with-file-aio --with-http_v2_module " && addgroup -S nginx && adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx && apk add --no-cache --virtual .build-deps gcc libc-dev make openssl-dev pcre-dev zlib-dev linux-headers curl gnupg1 libxslt-dev gd-dev geoip-dev && curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz && curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc -o nginx.tar.gz.asc && export GNUPGHOME="$(mktemp -d)" && found=''; for server in ha.pool.sks-keyservers.net hkp://keyserver.ubuntu.com:80 hkp://p80.pool.sks-keyservers.net:80 pgp.mit.edu ; do echo "Fetching GPG key $GPG_KEYS from $server"; gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; done; test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz && rm -rf "$GNUPGHOME" nginx.tar.gz.asc && mkdir -p /usr/src && tar -zxC /usr/src -f nginx.tar.gz && rm nginx.tar.gz && cd /usr/src/nginx-$NGINX_VERSION && ./configure $CONFIG --with-debug && make -j$(getconf _NPROCESSORS_ONLN) && mv objs/nginx objs/nginx-debug && mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so && mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so && mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so && mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so && ./configure $CONFIG && make -j$(getconf _NPROCESSORS_ONLN) && make install && rm -rf /etc/nginx/html/ && mkdir /etc/nginx/conf.d/ && mkdir -p /usr/share/nginx/html/ && install -m644 html/index.html /usr/share/nginx/html/ && install -m644 html/50x.html /usr/share/nginx/html/ && install -m755 objs/nginx-debug /usr/sbin/nginx-debug && install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so && install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so && install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so && install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so && ln -s ../../usr/lib/nginx/modules /etc/nginx/modules && strip /usr/sbin/nginx* && strip /usr/lib/nginx/modules/*.so && rm -rf /usr/src/nginx-$NGINX_VERSION && apk add --no-cache --virtual .gettext gettext && mv /usr/bin/envsubst /tmp/ && runDeps="$( scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst | tr ',' '\n' | sort -u | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' )" && apk add --no-cache --virtual .nginx-rundeps $runDeps && apk del .build-deps && apk del .gettext && mv /tmp/envsubst /usr/local/bin/ && apk add --no-cache tzdata && ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
# 2018-11-27T22:24:31.963481227Z
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# 2018-11-27T22:24:32.427844314Z
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# 2018-11-27T22:24:32.775711665Z
 EXPOSE 80/tcp
# 2018-11-27T22:24:33.020054824Z
 STOPSIGNAL [SIGTERM]
# 2018-11-27T22:24:33.474122308Z
 CMD ["nginx" "-g" "daemon off;"]
# 2018-12-13T00:40:13.892785542Z
COPY dir:ca2f1ff6c9384030412fb183d261f4970653c4699b3933d86b3842d1cd1adc8c in /usr/share/nginx/html/dist 
# 2018-12-13T00:40:14.094624013Z
COPY file:468438257f3c2dc312d325c28c7fa38bb702e071ce405cb8266c638590c79aba in /etc/nginx/nginx.conf 
```

