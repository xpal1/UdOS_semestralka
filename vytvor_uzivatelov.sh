#!/bin/bash

vytvor_uzivatela() {
    fullname=$1
    username=$2
    groupname=$3
    password=$4

    # vytvorenie uzivatelskej skupiny
    sudo groupadd $groupname

    # vytvorenie uzivatela s heslom, nastavenie celeho mena a pridanie do skupiny
    sudo useradd -m -c "$fullname" -g $groupname $username
    echo "$username:$password" | sudo chpasswd

    # nastavenie prav pre kazdeho uzivatel v jeho (vlastnej) skupine
    sudo chown -R $username:$groupname /home/$username
    sudo chmod -R 770 /home/$username
}

# vytvorenie uzivatelov
vytvor_uzivatela "NextCloud Admin" "nextcloud-admin" "nextcloud" "nadmin123"
vytvor_uzivatela "Drupal Admin" "drupal-admin" "drupal" "dadmin123"
vytvor_uzivatela "Wordpress Admin" "wordpress-admin" "wordpress" "wadmin123"
vytvor_uzivatela "E-Shop Admin" "eshop-admin" "eshop" "eadmin123"
vytvor_uzivatela "Prometheus Admin" "prometheus-admin" "prometheus" "padmin123"
