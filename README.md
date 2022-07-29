# Simple repository with useful scripts (some specific for usage with Fedora)

Also, adding some configuration files. Might move later, but for now, they live here.

After a fresh install, update your system

```
sudo dnf upgrade
```

Install the RPM fusion with additional software not offered by Fedora 

free
```
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```

nonfree
```
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Install vscode (my ide of preference)
