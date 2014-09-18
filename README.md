docker-rpm-builder-configurations
=================================

prebuilt configurations for [docker-rpm-builder](https://github.com/alanfranz/docker-rpm-builder)


FAQ
===

If you get an error related to cap_set_files (or other capabilities issue) when using one of this
images, it's an issue with the aufs driver of docker; you should switch to btrfs or devicemapper backend.

There's nothing I can do about that right now, the issue is there in upstream images as well.


