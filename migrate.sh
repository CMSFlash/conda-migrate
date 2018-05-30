#!/usr/bin/bash

conda_root=`realpath $1`
packs_file=`realpath $2`
tarball=`realpath $3`

cd $conda_root/pkgs
tar -xvf $tarball

packs=`cat $packs_file`
for pack in $packs
do
    echo Installing $pack
    conda install $pack
done
