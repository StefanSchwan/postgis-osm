FROM ubuntu:latest

RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt-get install \
	make \
	cmake \
	g++ \
	libboost-dev \
	libboost-system-dev \
	libboost-filesystem-dev \
	libexpat1-dev \
	zlib1g-dev \
	libluajit-5.1-dev \
	libbz2-dev \
	libpq-dev \
	libproj-dev \
	lua5.3 \
	liblua5.3-dev \
	pandoc \
	git \
	python3 \
	python3-pip -y 

RUN git clone https://github.com/openstreetmap/osm2pgsql.git \
	&& cd osm2pgsql \
	&& mkdir build \
	&& cd build \
	&& cmake -D WITH_LUAJIT=ON -D CMAKE_BUILD_TYPE=Release .. \
	&& make \
	&& make install \
	&& pip install osmium \
	&& pip install psycopg2

RUN apt-get remove make \
	cmake \
	g++ \
    git -y
