#!/bin/bash

# Update systémových balíčků
sudo apt-get update && sudo apt-get upgrade -y

# Odinstalace starších verzí Dockeru
sudo apt-get remove docker docker-engine docker.io containerd runc -y

# Instalace požadovaných závislostí
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

# Přidání Docker GPG klíče
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Přidání Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Aktualizace balíčků a instalace Dockeru
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Povolení a spuštění Dockeru
sudo systemctl enable docker
sudo systemctl start docker

# Přidání aktuálního uživatele do skupiny docker
sudo usermod -aG docker $USER

# Stažení a spuštění Portaineru
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

echo "Docker a Portainer byly úspěšně nainstalovány. Pro použití Dockeru bez 'sudo' se odhlaste a znovu přihlaste."
