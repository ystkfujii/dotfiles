

# https://golangstart.com/no_apt/

wget https://dl.google.com/go/go1.17.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.17.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.17.linux-amd64.tar.gz
go version

