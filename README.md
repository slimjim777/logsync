# Enable systemd journal uploads

Simple example snap to show how to send journal messages from a device
to a remote journal server. This uses [systemd-journal-upload](http://manpages.ubuntu.com/manpages/bionic/man8/systemd-journal-upload.8.html).

## Install the snap
```
sudo snap install logsync-james --devmode
```

Note that devmode is needed as the snap needs privileged interfaces. This can be avoided
by using a brand store and a snap declaration assertion.

To connect the interfaces:
```
sudo snap connect logsync:log-observe
sudo snap connect logsync:config-logsync
snap connections logsync
```

## Configure the snap
Set up log-sync over HTTP:
```
sudo snap set logsync url="http://example.com:19532"
```

Set up log-sync with custom certificates:
```
sudo snap set logsync url="https://example.com:19532"
sudo snap set logsync cert="/path/to/pem-encoded/certificate"
sudo snap set logsync key="/path/to/pem-encoded/certificate-key"
sudo snap set logsync ca=`LS0tLS1CRUdJTiBSU0EgUFJJVkFUR...`
```
The certificate settings (`cert`, `key` and `ca`) can be a path to a file or the
base64-encoded file.
