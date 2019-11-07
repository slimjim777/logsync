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
