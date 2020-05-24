FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
#RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/1353-7a563e9f505769440064d936750136cba96d3fea/fx.tar.xz | tar xJ -C /srv
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2468-056bc99dee46c305a775585e14f35395370445bd/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
