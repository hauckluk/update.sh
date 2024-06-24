#!/bin/bash

# Führe die Befehle aus
apt install inxi -y
apt update && apt upgrade -y && apt autoremove -y

# Überprüfe den Status des vorherigen Befehls
if [ $? -eq 0 ]; then
    # Befehle erfolgreich ausgeführt
    echo -e "\e[1;32mUpdates abgeschlossen\e[0m"  # Ausgabe in grüner, fetter Farbe
else
    # Fehler bei der Ausführung der Befehle
    echo "Fehler bei der Ausführung der Updates" >&2
fi
#Zeige version
inxi -Sz
hostname
