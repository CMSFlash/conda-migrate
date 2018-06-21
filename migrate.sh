#!/usr/bin/bash

conda_root=`realpath $1`
env=$2
packs_file=`realpath $3`
tarball=`realpath $4`

cd $conda_root/pkgs
tar -xvf $tarball

packs=`cat $packs_file`
for pack in $packs
do
    echo Installing $pack
    $conda_root/bin/conda install -n $env $pack
done

