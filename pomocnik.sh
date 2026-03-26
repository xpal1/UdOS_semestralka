#!/bin/bash

while true; do
    read -p "Zadaj príkaz (pre zobrazenie možností zadaj 'help'): " input

    case $input in
        "akt")
            echo "Vykonávam čiastočnú aktualizáciu..."
            sudo apt-get update
            ;;
        "akt-full")
            echo "Vykonávam úplnú aktualizáciu..."
            sudo apt full-upgrade
            ;;
        "zobraz u")
            echo "Zobrazujem aktuálne pripojených a aktívnych užívateľov..."
            who
            ;;
        "restr")
            echo "Reštartujem sa..."
            sudo reboot
            ;;
        "vypni")
            echo "Vypínam sa..."
            sudo poweroff
            ;;
        "ukonc")
            echo "Koniec mojej pomoci"
            break
            ;;
        "co bezi")
            echo "Zobrazujem aktuálne bežiace procesy a služby..."
            ps aux
            ;;
        "restr w")
            echo "Reštartujem web server Apache..."
            sudo systemctl restart apache2
            ;;
        "restr mysql")
            echo "Reštartujem MySQL/MariaDB server..."
            sudo systemctl restart mariadb
            ;;
        "odhlas")
            echo "Odhlasujem aktívneho používateľa..."
            exit
            ;;
        "zobraz system")
            echo "Zobrazujem informácie o web serveri..."
            uname -a
            ;;
        "zobraz siet")
            echo "Zobrazujem informácie o sieti a sietovej konfigurácii..."
            ifconfig
            ;;
        "help")
            echo "Dostupné príkazy:"
            echo "akt - čiastočná aktualizácia"
            echo "akt-full - úplná aktualizácia"
            echo "zobraz u - zobrazenie pripojených užívateľov"
            echo "restr - reštart systému"
            echo "vypni - vypnutie systému"
            echo "ukonc - ukončenie skriptu"
            echo "co bezi - zobrazenie bežiacich procesov v systéme"
            echo "restr w - reštart Apache"
            echo "restr mysql - reštart MySQL/MariaDB"
            echo "odhlas - odhlásenie používateľa z web servera"
            echo "zobraz system - zobrazenie informácií o systéme"
            echo "zobraz siet - zobrazenie informácií o sieti a sietovej konfigurácii"
            ;;
        *)
            echo "Neplatný príkaz. Pre zobrazenie možností zadaj 'help'."
            ;;
    esac
done
