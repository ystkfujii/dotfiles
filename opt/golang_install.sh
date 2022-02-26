

# https://golangstart.com/no_apt/

wget https://dl.google.com/go/go1.17.linux-amd64.tar.gz
mkdir -p ${PATH}/opt
tar -C ${PATH}/opt -xzf go1.17.linux-amd64.tar.gz
export PATH=$PATH:${PATH}/go/bin
rm go1.17.linux-amd64.tar.gz
go version

