#!/bin/bash
set -e
pushd epel-5-x86-64
docker build --no-cache --pull -t epel5dev .
popd

pushd epel-5-i386
docker build --no-cache --pull -t epel5i386dev .
popd

pushd epel-6-x86-64
docker build --no-cache --pull -t epel6dev .
popd

pushd epel-7-x86-64
docker build --no-cache --pull -t epel7dev .
popd

pushd fedora-20-x86-64
docker build --no-cache --pull -t fedora20dev .
popd

pushd fedora-21-x86-64
docker build --no-cache --pull -t fedora21dev .
popd

pushd fedora-22-x86-64
docker build --no-cache --pull -t fedora22dev .
popd

pushd fedora-23-x86-64
docker build --no-cache --pull -t fedora23dev .
popd


pushd fedora-rawhide-x86-64
docker build --no-cache --pull -t fedorarawhidedev .
popd
