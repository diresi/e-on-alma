These scripts build enlightenment 0.25 for RHEL8 using an almalinux:8 docker
image. E is sensitive to its installation prefix, so we're using the same paths
in docker and on localhost.

Building & running
==================
- clone repo
- run build.sh
- extract results:
```
    tar xf e.tar.gz     # enlightenment+efl
    tar xf lib64.tar.gz # host libs from docker, possibly missing on localhost
```
- run via vnc
```
    /opt/TurboVNC/bin/vncserver :40 -wm $PWD/run.sh
```
