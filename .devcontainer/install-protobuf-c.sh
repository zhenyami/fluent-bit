# protobuf-c
git clone https://github.com/protobuf-c/protobuf-c.git
pushd protobuf-c
./autogen.sh
./configure
make && make install
popd

# protobuf-c-rpc
git clone https://github.com/protobuf-c/protobuf-c-rpc.git
pushd protobuf-c-rpc
./autogen.sh
./configure PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
make && make install
popd

# nghttp2
git clone https://github.com/nghttp2/nghttp2.git
pushd nghttp2
autoreconf -i
automake
autoconf
./configure --enable-lib-only
make
popd

# other
mkdir out
pushd out
protoc --c_out=. google/cloud/bigquery/storage/v1/storage.proto --proto_path=/workspaces/googleapis
popd
