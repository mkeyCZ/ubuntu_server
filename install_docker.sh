#!/bin/bash

# Funkce pro výpis chyby a ukončení skriptu
function chyba {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

# Funkce pro logování
function log() {
    echo "$(date) - $1" | tee -a install_docker.log
}

# Funkce pro kontrolu připojení k internetu
function kontrola_internetu() {
  printf "Kontrola připojení k internetu..."
  wget -q --spider http://github.com
  if [ $? -eq 0 ]; then
    echo "Připojeno k internetu. Pokračuji."
  else
    chyba "Nepřipojeno k internetu. Připojte se a zkuste skript znovu."
  fi
}

# Funkce pro kontrolu, zda je Docker již nainstalován
function kontrola_docker() {
  if [ -x "$(command -v docker)" ]; then
    echo "Docker je již nainstalován."
    read -p "Chcete aktualizovat Docker na nejnovější verzi? (ano/ne): " odpoved
    if [[ $odpoved == "ano" ]]; then
      log "Aktualizace Dockeru..."
      curl -sSL https://get.docker.com | sh || chyba "Aktualizace Dockeru selhala."
    else
      echo "Aktualizace Dockeru byla přeskočena."
      exit 0
    fi
  fi
}

# Funkce pro instalaci Docker Compose
function instalace_docker_compose() {
  read -p "Chcete nainstalovat Docker Compose? (ano/ne): " odpoved
  if [[ $odpoved == "ano" ]]; then
    log "Instalace Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version || chyba "Instalace Docker Compose selhala."
  else
    echo "Instalace Docker Compose byla přeskočena."
  fi
}

# Kontrola připojení k internetu
kontrola_internetu

# Kontrola, zda je Docker již nainstalován
kontrola_docker

# Instalace Dockeru pomocí oficiálního skriptu
log "Instalace Dockeru..."
curl -sSL https://get.docker.com | sh || chyba "Instalace Dockeru selhala."

# Přidání uživatele do skupiny docker
log "Přidání uživatele do skupiny Docker..."
sudo usermod -aG docker $USER || chyba "Nepodařilo se přidat uživatele do skupiny Docker."

# Instalace Docker Compose (volitelné)
instalace_docker_compose

# Výpis úspěšného dokončení a dotaz na restart systému
echo -e "\\e[92mInstalace Dockeru byla úspěšná. Nezapomeňte se odhlásit nebo restartovat systém, aby se změny projevily.\\e[39m"
read -p "Chcete nyní restartovat systém? (ano/ne): " restart
if [[ $restart == "ano" ]]; then
  log "Systém bude restartován..."
  sudo reboot
elif [[ $restart == "ne" ]]; then
  echo "Systém nebude restartován. Nezapomeňte restartovat systém později, aby se změny projevily."
else
  echo "Neplatná odpověď. Restart systému byl přeskočen."
fi
