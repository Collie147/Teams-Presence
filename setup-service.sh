#!/bin/bash
if [ "$(id -u)" != "0" ]; then
	echo "Please re-run as sudo."
	exit 1
fi
sudo cp teams-presence.service /etc/systemd/system/teams-presence.service
sudo systemctl enable teams-presence.service
