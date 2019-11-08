#!/bin/sh

snapcraft clean; snapcraft

sudo snap try --devmode

sudo snap connect logsync-james:log-observe
sudo snap connect logsync-james:config-logsync
snap connections logsync-james

sudo snap set logsync-james url="http://localhost:19532"
