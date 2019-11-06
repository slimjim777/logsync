#!/bin/sh

snapcraft clean; snapcraft

sudo snap try --devmode

sudo snap connect logsync:log-observe
sudo snap connect logsync:config-logsync
snap connections logsync

sudo snap set logsync url="http://localhost:19532"
