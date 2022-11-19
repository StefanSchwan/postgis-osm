FROM alpine:3.17

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
    git \
    expat-dev \
    gdal-dev \
    geos-dev \
    sparsehash \
    zlib-dev \
    boost-dev \
    bzip2-dev \
    lz4-dev \
    py3-psycopg2


# RUN git clone -b ${VERSION} --single-branch --depth 1 https://github.com/openstreetmap/osm2pgsql.git && cd osm2pgsql && mkdir build && cd build && cmake .. && make && make install
RUN git clone https://github.com/mapbox/protozero.git && \
        cd protozero && \
        mkdir build && \
        cd build && \
        cmake .. && \
        make && \
        make install


RUN git clone https://github.com/osmcode/libosmium.git && \
         cd libosmium && \
         mkdir build && \
         cd build && \
         cmake -DCMAKE_BUILD_TYPE=MinSizeRel -DBUILD_EXAMPLES=OFF .. && \
         make

RUN git clone https://github.com/osmcode/osmium-tool.git && \
        cd osmium-tool && \
        mkdir build && \
        cd build && \
        cmake -DCMAKE_BUILD_TYPE=MinSizeRel .. && \
        make && \
        make install 

RUN apk del \
    cmake \
    make \
    g++ \
    git 
# ENTRYPOINT ["osm2pgsql"]

