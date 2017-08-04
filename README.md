docker-rpm-builder-configurations
=================================

Prebuilt configurations for [docker-rpm-builder](https://github.com/alanfranz/docker-rpm-builder)

Those are designed to be ready, out of the box configurations that can be used to test the tool
above and/or can be used as a template for your own, but have nothing magical. Feel free
to use your own image, just respect the image requirements that are exposed in the README
of the tool in the [build images](https://github.com/alanfranz/docker-rpm-builder#build-images) section.

Those images are opinionated; they disable the builtin repos and set the required repos directly
in yum.conf; you can put additional repos in */etc/yum.repos.d*, however.


Using the images
================

All the images are available on [docker hub](https://hub.docker.com/r/alanfranz/docker-rpm-builder-configurations/).

Use the following repositories/tags:

## Centos (includes EPEL)

* alanfranz/docker-rpm-builder-configurations:centos-6
* alanfranz/docker-rpm-builder-configurations:centos-7

## Fedora

* alanfranz/docker-rpm-builder-configurations:fedora-25
* alanfranz/docker-rpm-builder-configurations:fedora-26

FAQ
===

### Image building errors
If you get an error related to cap_set_files (or other capabilities issue) when using one of this
images, it's an issue with the aufs driver of docker; you should switch to btrfs or devicemapper backend.

There's nothing I can do about that right now, the issue is there in upstream images as well.

Check [this article](http://muehe.org/posts/switching-docker-from-aufs-to-devicemapper/) for some details.

### Fedora 26
There seem to be some glitches with the image. I'm working on it.
