FROM alpine

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

RUN git clone https://github.com/openstreetmap/osm2pgsql.git && cd osm2pgsql && mkdir build && cd build && cmake .. && make && make man && make install
ENTRYPOINT ["osm2pgsql"]

#RUN 