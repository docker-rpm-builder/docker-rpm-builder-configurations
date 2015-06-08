#!/bin/bash
set -e
pushd epel-5-x86-64
docker build --pull -t epel5dev .
popd

pushd epel-6-x86-64
docker build --pull -t epel6dev .
popd

pushd epel-7-x86-64
docker build --pull -t epel7dev .
popd

pushd fedora-20-x86-64
docker build --pull -t fedora20dev .
popd

pushd fedora-21-x86-64
docker build --pull -t fedora21dev .
popd

pushd fedora-22-x86-64
docker build --pull -t fedora22dev .
popd

pushd fedora-rawhide-x86-64
docker build --pull -t fedorarawhidedev .
popd
