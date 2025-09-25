# Create working directory
cd /tmp
wget https://github.com/prometheus/prometheus/releases/download/v2.45.6/prometheus-2.45.6.linux-amd64.tar.gz
tar -xvzf prometheus-2.45.6.linux-amd64.tar.gz
cd prometheus-2.45.6.linux-amd64/

# Copy binaries to system paths
sudo mv prometheus promtool /usr/local/bin/
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

# Create directories and set permissions
sudo mkdir -p /etc/prometheus/{consoles,console_libraries,rules}
sudo mkdir /var/lib/prometheus
sudo mv consoles/ console_libraries/ /etc/prometheus/
sudo chown -R prometheus:prometheus /etc/prometheus/ /var/lib/prometheus/
