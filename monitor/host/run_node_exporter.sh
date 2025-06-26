version=1.9.1

if [ ! -d node_exporter ]; then

  curl -L https://github.com/prometheus/node_exporter/releases/download/v$version/node_exporter-$version.darwin-arm64.tar.gz -o node_exporter.tar.gz -m 20
  tar xvfz node_exporter.tar.gz
  mv node_exporter-$version.darwin-arm64 node_exporter
fi

cd node_exporter
./node_exporter --web.listen-address=":9100"