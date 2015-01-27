docker-rpm-builder-configurations
=================================

prebuilt configurations for [docker-rpm-builder](https://github.com/alanfranz/docker-rpm-builder)

Those are designed to be ready, out of the box configurations that can be used to test the tool
above and/or can be used as a template for your own, but have nothing magical. Feel free
to use your own image, just respect the image requirements that are exposed in the README
of the tool in the [build images](https://github.com/alanfranz/docker-rpm-builder#build-images) section.

Those images are opinionated; they disable the builtin repos and set the required repos directly
in yum.conf; you can put additional repos in */etc/yum.repos.d*, however.


FAQ
===

### Image building errors
If you get an error related to cap_set_files (or other capabilities issue) when using one of this
images, it's an issue with the aufs driver of docker; you should switch to btrfs or devicemapper backend.

There's nothing I can do about that right now, the issue is there in upstream images as well.

Check [this article](http://muehe.org/posts/switching-docker-from-aufs-to-devicemapper/) for some details.

### Centos5+EPEL5
The yum-builddep has been hacked since the original one in Centos 5 doesn't work with bare specfiles.
It should work, but can occasionally do something strange.
