# UMRT Apt Image

This image exists only because [reprepro](https://salsa.debian.org/debian/reprepro/) ([manpage](https://packages.debian.org/experimental/reprepro)), the client we are using to manage [umrt-apt-repo](https://github.com/UMRoboticsTeam/umrt-apt-repo), only offers the features we need after version 5.1.1.
Unfortunately for us, this has not made it into the Ubuntu apt repository yet, which what the ROS-humble-based [build image](https://github.com/UMRoboticsTeam/umrt-build) uses.

The only place reprepro is currently (2025-01-02) packaged at the version we need is the experimental repo of Debian, so this is a Debian Trixie image we can install it into.

See the following to determine when we can move away from the experimental sources (and hopefully some day back into the build image):
- https://packages.debian.org/search?keywords=reprepro
- https://launchpad.net/ubuntu/+source/reprepro