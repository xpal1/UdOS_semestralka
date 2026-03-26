# UdOS - Semestralna praca

Semestralna praca pre predmet UdOS (uvod do operacnych systemov) zamerana na administraciu Linux servera pomocou Bash skriptov.

## O projekte

Projekt obsahuje dva hlavne skripty:

- `pomocnik.sh`: interaktivny pomocnik pre bezne spravcovske prikazy (aktualizacie, restart sluzieb, informacie o systeme a sieti).
- `vytvor_uzivatelov.sh`: automatizovane vytvorenie pouzivatelov a skupin pre viacero webovych sluzieb.

## Obsah repozitara

- `pomocnik.sh`
- `vytvor_uzivatelov.sh`
- `dokumentacia_sp_udos_korabsky.pdf`

## Poziadavky

- Linux distribucia (odporucany Ubuntu/Debian)
- Bash
- `sudo` opravnenia
- Nainstalovane nastroje/sluzby podla pouzitia:
  - `apt`
  - `systemctl`
  - `apache2` (pre prikaz restartu web servera)
  - `mariadb` (pre prikaz restartu DB servera)
  - `ifconfig` (z balika `net-tools`, ak sa pouziva)

## Spustenie

1. Nastav spustitelne prava:

```bash
chmod +x pomocnik.sh vytvor_uzivatelov.sh
```

2. Spusti interaktivneho pomocnika:

```bash
./pomocnik.sh
```

3. Spusti skript na vytvaranie pouzivatelov:

```bash
./vytvor_uzivatelov.sh
```

## Prikazy v `pomocnik.sh`

- `help` - vypise dostupne prikazy
- `akt` - ciastocna aktualizacia balikov (`apt-get update`)
- `akt-full` - uplna aktualizacia systemu (`apt full-upgrade`)
- `zobraz u` - vypise aktivnych pouzivatelov (`who`)
- `co bezi` - vypise bezne procesy (`ps aux`)
- `zobraz system` - informacie o systeme (`uname -a`)
- `zobraz siet` - informacie o sieti (`ifconfig`)
- `restr w` - restart Apache (`systemctl restart apache2`)
- `restr mysql` - restart MariaDB (`systemctl restart mariadb`)
- `restr` - restart systemu
- `vypni` - vypnutie systemu
- `odhlas` - ukoncenie shell session
- `ukonc` - ukoncenie skriptu
