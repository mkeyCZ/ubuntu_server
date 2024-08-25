#!/bin/bash

# Funkce pro výpis chyby a ukončení skriptu
function chyba {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
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

# Kontrola připojení k internetu
kontrola_internetu

# Vytvoření složky pro konfiguraci Portaineru
sudo mkdir -p /portainer/Files/AppData/Config/portainer || chyba "Nepodařilo se vytvořit složku pro konfiguraci Portaineru."

# Stažení nejnovější verze Portaineru
sudo docker pull portainer/portainer-ce:latest || chyba "Nepodařilo se stáhnout nejnovější verzi Docker image Portaineru."

# Spuštění Portaineru jako Docker kontejner
sudo docker run -d \
  -p 9000:9000 \
  -p 9443:9443 \
  --name=portainer \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /portainer/Files/AppData/Config/portainer:/data \
  portainer/portainer-ce:latest || chyba "Nepodařilo se spustit Docker kontejner Portaineru."

echo -e "\\e[92mPortainer byl úspěšně nainstalován a spuštěn. Přístup k Portaineru je k dispozici na portech 9000 a 9443.\\e[39m"
