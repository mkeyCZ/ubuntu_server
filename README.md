# Ubuntu Server: Docker a Portainer

![Docker a Portainer](https://forum.linuxdoma.sk/uploads/default/original/1X/31a5d004a75873ce6dfdd07333ce730b6cc7f013.png)

Toto úložiště obsahuje sbírku podrobných návodů pro nasazení a správu různých serverových aplikací pomocí nástrojů [Docker](https://www.docker.com/) a [Portainer](https://www.portainer.io/). Najdete zde kroky pro instalaci a konfiguraci aplikací v kontejnerech Dockeru, stejně jako instrukce pro efektivní správu a monitorování těchto aplikací prostřednictvím rozhraní Portainer. Úložiště je navrženo tak, aby usnadnilo práci s těmito nástroji a pomohlo vám rychle a efektivně implementovat a udržovat serverová řešení ve vašem prostředí.

## Instalace Dockeru

Pro instalaci Dockeru na váš **Ubuntu server** použijte následující příkaz:

```bash
wget -qO- https://raw.githubusercontent.com/mkeyCZ/ubuntu_server/main/install_docker.sh | bash
```

## Instalace Portaineru

Pro instalaci **Portaineru** použijte tento příkaz:

```bash
wget -qO- https://raw.githubusercontent.com/mkeyCZ/ubuntu_server/main/install_portainer.sh | bash
```

## JSON Šablony

Pokud potřebujete použít JSON šablony pro snadnou instalaci docker apliací, můžete je přidat do nastavení v portaineru:
``https://raw.githubusercontent.com/ntv-one/portainer/main/template.json``

## Nejlepší terminál programy

- btop -> systémové informace
- mc -> průzkumník souborů
- git -> spojení s github
- neofetch -> rychlé systémové informace

instalce výše uvedených příkazů:  ``sudo apt install mc neofetch btop``

## Další informace

- [Dokumentace Dockeru](https://docs.docker.com/)
- [Dokumentace Portaineru](https://docs.portainer.io/)


## Chyby

Pokud máte návrhy na vylepšení nebo najdete chyby, neváhejte mě kontaktovat. Budu rád za poskytnutý log chyby.

## Autor

Další informace a projekty naleznete na:

- Fórum: [Linuxdoma](https://forum.linuxdoma.cz/u/mates/activity)
- Wiki: [Wiki](https://wiki.matejserver.cz)
- GitHub: [Github](https://github.com/mkeyCZ/)


