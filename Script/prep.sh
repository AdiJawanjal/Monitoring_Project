# Update system packages
sudo apt update && sudo apt upgrade -y

# Create system users
sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --system -g prometheus prometheus

sudo groupadd --system alertmanager  
sudo useradd -g alertmanager --no-create-home --shell /bin/false alertmanager

sudo useradd --system --no-create-home --shell /bin/false grafana
