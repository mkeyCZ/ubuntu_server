# Ubuntu Server: Docker a Portainer

![Docker a Portainer](https://forum.linuxdoma.sk/uploads/default/original/1X/31a5d004a75873ce6dfdd07333ce730b6cc7f013.png)

Toto úložiště poskytuje návody a skripty pro snadnou instalaci a správu serverových aplikací na Ubuntu serveru pomocí Dockeru a Portaineru. Obsahuje krok za krokem průvodce pro:

- Instalaci Dockeru pro kontejnery.
- Nastavení Portaineru pro správu a monitorování kontejnerů.
- Použití JSON šablon pro snadnou konfiguraci aplikací v Portaineru.
- Doporučení pro užitečné terminálové programy a důležité příkazy.
- Návod na připojení a trvalé nastavení nových disků.
- Zprovoznění sdílení adresáře, přes protokol SAMBA.

---

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

![Json konfigurace](https://github.com/mkeyCZ/ubuntu_server/blob/main/obrazky/json.png)

---

## Nejlepší terminál programy

- btop -> systémové informace
- mc -> průzkumník souborů
- git -> spojení s github
- neofetch -> rychlé systémové informace

instalce výše uvedených příkazů:  ``sudo apt install mc neofetch btop``

---

## Důležité terminál příkazy

| **Kategorie**            | **Příkaz**                          | **Popis**                                               |
|--------------------------|-------------------------------------|---------------------------------------------------------|
| **Navigace v systému**    | `pwd`                               | Zobrazení aktuálního adresáře.                          |
|                          | `ls`                                | Výpis souborů a složek v aktuálním adresáři.            |
|                          | `cd [cesta]`                        | Změna adresáře.                                         |
|                          | `mkdir [název_složky]`              | Vytvoření nové složky.                                  |
|                          | `rm [soubor]`                       | Smazání souboru.                                        |
| **Správa uživatelů**      | `adduser [uživatel]`                | Vytvoření nového uživatele.                             |
|                          | `deluser [uživatel]`                | Smazání uživatele.                                      |
|                          | `passwd [uživatel]`                 | Změna hesla uživatele.                                  |
|                          | `usermod -aG [skupina] [uživatel]`  | Přidání uživatele do skupiny.                           |
|                          | `whoami`                            | Zobrazení aktuálně přihlášeného uživatele.              |
| **Správa procesů**        | `ps aux`                            | Výpis všech běžících procesů.                           |
|                          | `top`                               | Interaktivní nástroj pro monitorování procesů.          |
|                          | `kill [PID]`                        | Ukončení procesu podle jeho ID.                         |
|                          | `kill -9 [PID]`                     | Násilné ukončení procesu.                               |
| **Správa balíčků**        | `apt update`                        | Aktualizace seznamu balíčků.                            |
|                          | `apt upgrade`                       | Aktualizace všech nainstalovaných balíčků.              |
|                          | `apt install [balíček]`             | Instalace balíčku.                                      |
|                          | `apt remove [balíček]`              | Odebrání balíčku.                                       |
|                          | `apt search [název_balíčku]`        | Vyhledání balíčku podle názvu nebo popisu.              |
| **Síťové příkazy**        | `ifconfig`                          | Zobrazení informací o síťových rozhraních.              |
|                          | `ping [IP_adresa/hostname]`         | Kontrola dostupnosti serveru/sítě.                      |
|                          | `netstat -tuln`                     | Zobrazení aktivních síťových spojení a portů.           |
|                          | `ssh [uživatel]@[hostname/IP]`      | Připojení k vzdálenému serveru pomocí SSH.              |
|                          | `ip addr show`                      | Zobrazení detailních informací o všech síťových rozhraních včetně IP adresy. |
| **Správa souborů**        | `cp [zdroj] [cíl]`                  | Kopírování souborů nebo složek.                         |
|                          | `mv [zdroj] [cíl]`                  | Přesun nebo přejmenování souborů nebo složek.           |
|                          | `chmod [práva] [soubor]`            | Změna přístupových práv k souborům/složkám.             |
|                          | `chown [uživatel]:[skupina] [soubor]` | Změna vlastníka a skupiny souboru/složky.            |
| **Záloha a komprese**     | `tar -cvf [soubor.tar] [složka]`    | Vytvoření tar archivu.                                  |
|                          | `tar -xvf [soubor.tar]`             | Rozbalení tar archivu.                                  |
|                          | `gzip [soubor]`                     | Komprese souboru pomocí gzip.                           |
|                          | `gunzip [soubor.gz]`                | Dekompresování gzip souboru.                            |
| **Správa služeb (systemd)**| `systemctl start [služba]`         | Spuštění služby.                                        |
|                          | `systemctl stop [služba]`           | Zastavení služby.                                       |
|                          | `systemctl restart [služba]`        | Restartování služby.                                    |
|                          | `systemctl status [služba]`         | Zobrazení stavu služby.                                 |
|                          | `systemctl enable [služba]`         | Povolení automatického spouštění služby při startu.     |
|                          | `systemctl disable [služba]`        | Zakázání automatického spouštění služby při startu.     |
| **Další užitečné příkazy**| `df -h`                             | Zobrazení informací o volném místě na disku.            |
|                          | `du -sh [složka]`                   | Zobrazení velikosti složky/souboru.                     |
|                          | `history`                           | Zobrazení historie příkazů.                             |
|                          | `uptime`                            | Zobrazení doby běhu systému a zatížení.                 |
|                          | `reboot`                            | Restartování serveru.                                   |
|                          | `shutdown now`                      | Vypnutí serveru.                                        |
|                          | `lsblk`                             | Zobrazení informací o připojených blocích zařízení (disků, oddílů). |

---
### Užitečné příkazy 

#### Archivace do formátu **.zip**

- **Archivace jednoho souboru:**
  ```bash
  zip archivni_soubor.zip cesta/k/zdrojovemu_souboru
  ```
  - Tento příkaz vytvoří `.zip` archiv s názvem `archivni_soubor.zip` obsahující soubor na zadané cestě.

- **Archivace více souborů:**
  ```bash
  zip archivni_soubor.zip soubor1 soubor2 soubor3
  ```
  - Tento příkaz zabalí více souborů do jednoho `.zip` archivu.

- **Rekurzivní archivace adresáře:**
  ```bash
  zip -r archivni_soubor.zip cesta/k/adresari/
  ```
  - Použitím volby `-r` zabalíte celý adresář, včetně všech podadresářů a souborů.

- **Archivace s ochranou heslem:**
  ```bash
  zip -e archivni_soubor.zip soubor1 soubor2
  ```
  - Tento příkaz vytvoří šifrovaný `.zip` archiv a vyžádá si heslo, které bude nutné pro jeho rozbalení.

Tyto příkazy pokrývají běžné scénáře při vytváření `.zip` archivů a umožňují snadné a efektivní balení souborů.

#### Kopírování přes **rsync**

**Lokální kopírování souborů:**
```bash
rsync -avh /cesta/k/zdrojovemu/souboru/file.txt /cesta/k/cilovemu/adresari/
```
- Tento příkaz zkopíruje soubor `file.txt` do cílového adresáře na vašem lokálním systému. 
- **Volby:**
  - `-a`: Archivní režim (rekurzivní kopírování, zachování atributů jako jsou práva a časy).
  - `-v`: Zobrazí podrobnosti o kopírování.
  - `-h`: Výstupy v lidsky čitelném formátu (např. velikosti souborů).

**Kopírování souborů na vzdálený server přes SSH:**
```bash
rsync -avh -e ssh /cesta/k/lokalnimu/souboru/ user@remote_server:/cesta/k/cilovemu/adresari/
```
- Tento příkaz zkopíruje soubor nebo adresář ze zdrojového umístění na vašem lokálním počítači na vzdálený server pomocí SSH.
- **Volba `-e ssh`** zajistí, že přenos bude probíhat přes zabezpečený SSH protokol.

**Kopírování souborů ze vzdáleného serveru na lokální počítač přes SSH:**
```bash
rsync -avh -e ssh user@remote_server:/cesta/k/vzdalenemu/souboru/ /cesta/k/lokalnimu/adresari/
```
- Tento příkaz zkopíruje soubor nebo adresář ze vzdáleného serveru na váš lokální počítač. 
- Opět je použit protokol SSH pro zabezpečený přenos dat.

Tento způsob kopírování je efektivní, bezpečný a umožňuje snadnou synchronizaci mezi lokálním a vzdáleným systémem.

---
## Připojení dalšího disku do adresáře

### 1. **Najdi nový disk**
Nejdříve zjisti, jaký název má nový disk:

```bash
lsblk
```

- **Pozor:** Nový disk bude často označen jako `/dev/sdb` nebo podobně. Dávej pozor, abys pracoval s novým diskem a ne s hlavním diskem systému (obvykle `/dev/sda`), aby nedošlo k nechtěné ztrátě dat.

### 2. **Formátuj disk (pokud je potřeba)**
Pokud je disk nový nebo chceš z něj smazat všechna data, naformátuj ho:

```bash
sudo mkfs.ext4 /dev/sdb
```

- **Pozor:** Tento krok smaže všechna data na disku. Ujisti se, že pracuješ se správným diskem.

### 3. **Vytvoř složku pro připojení**
Vytvoř složku (tzv. "mount point"), kam disk připojíš:

```bash
sudo mkdir /mnt/novy_disk
```

- **Pozor:** Vyber složku, která je prázdná nebo ji určíš pouze pro tento účel, aby nedošlo k přepsání existujících dat.

### 4. **Připoj disk**
Připoj disk do zvoleného adresáře:

```bash
sudo mount /dev/sdb /mnt/novy_disk
```

- **Pozor:** Po připojení bude disk dostupný v této složce. Pokud ji odpojíš, data ve složce zůstanou přístupná, ale nebudou ukládána na disk.

### 5. **Trvalé připojení disku**
Aby se disk připojoval automaticky při každém restartu:

1. Zjisti UUID disku:

   ```bash
   sudo blkid /dev/sdb
   ```

   - **Pozor:** Zkopíruj správný `UUID` (unikátní identifikátor) disku, který chceš trvale připojit.

2. Otevři soubor pro automatické připojení:

   ```bash
   sudo nano /etc/fstab
   ```

3. Přidej nový řádek s těmito údaji (nahraď UUID a cestu):

   ```bash
   UUID=zde-tvuj-uuid  /mnt/novy_disk  ext4  defaults  0  2
   ```

   - **Pozor:** Ověř si, že UUID, cesta a typ souborového systému (např. `ext4`) jsou správné. Chybný záznam může způsobit problémy při startu systému.

4. Ulož změny a zavři editor (`CTRL + O`, `Enter`, `CTRL + X`).

5. Otestuj, že je vše správně nastaveno:

   ```bash
   sudo mount -a
   ```

   - **Pozor:** Pokud nejsou žádné chyby, disk se připojí podle nové konfigurace. Pokud se objeví chyba, zkontroluj `fstab`.

### 6. **Kontrola připojení**
Ověř, že disk je správně připojen:

```bash
lsblk
```

- **Pozor:** Ujisti se, že disk je připojen tam, kde očekáváš, a že data jsou přístupná. Pokud něco nefunguje správně, může být potřeba zkontrolovat kroky výše.

---
Tady je stručný a jednoduchý návod pro nováčky, jak sdílet složku pomocí Samba a nastavit heslo pro přístup:

---

## Jak sdílet složku přes [SAMBA](https://www.samba.org/)
![Samba Logo](https://raw.githubusercontent.com/mkeyCZ/ubuntu_server/main/obrazky/samba.png)

### 1. **Nainstaluj Samba**

Otevři terminál a zadej:

```bash
sudo apt update
sudo apt install samba
```

### 2. **Připrav složku**

Vytvoř složku, kterou chceš sdílet:

```bash
sudo mkdir /srv/samba/sdilena_slozka
```

Nastav oprávnění:

```bash
sudo chown nobody:nogroup /srv/samba/sdilena_slozka
sudo chmod 777 /srv/samba/sdilena_slozka
```

### 3. **Konfiguruj Samba**

Otevři konfigurační soubor:

```bash
sudo nano /etc/samba/smb.conf
```

Přejdi na konec souboru a přidej:

```ini
[sdilena_slozka]
   path = /srv/samba/sdilena_slozka
   browsable = yes
   writable = yes
   guest ok = no
   create mask = 0770
   directory mask = 0770
```

- **Pozor:** `guest ok = no` znamená, že budeš potřebovat uživatelské jméno a heslo pro přístup.

### 4. **Nastav uživatelské jméno a heslo**

Přidej uživatele do Samby a nastav heslo:

```bash
sudo smbpasswd -a tvuj_uzivatel
```

- **Pozor:** Nahraď `tvuj_uzivatel` jménem uživatele, který chceš přidat.

### 5. **Restartuj Samba**

Restartuj službu, aby se změny projevily:

```bash
sudo systemctl restart smbd
```

### 6. **Ověř sdílení**

Zkontroluj sdílení:

```bash
smbclient -L localhost
```

### 7. **Přístup ke sdílené složce**

- **Windows:** Otevři Průzkumník a zadej:

  ```text
  \\ip_adresa_tvojeho_serveru\sdilena_slozka
  ```

- **Linux:**

  ```bash
  smb://ip_adresa_tvojeho_serveru/sdilena_slozka
  ```

  Zadej heslo, když bude vyzván.

---

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


