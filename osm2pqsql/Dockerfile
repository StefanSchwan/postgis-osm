FROM alpine

ARG VERSION="1.7.2"
RUN apk --update-cache add \
    cmake \
    make \
    g++ \
    boost-dev \
    expat-dev \
    bzip2-dev \
    zlib-dev \
    libpq \
    proj-dev \
    lua5.3-dev \
    postgresql-dev \
    git 

RUN git clone -b ${VERSION} --single-branch --depth 1 https://github.com/openstreetmap/osm2pgsql.git && cd osm2pgsql && mkdir build && cd build && cmake .. && make && make install
ENTRYPOINT ["osm2pgsql"]

