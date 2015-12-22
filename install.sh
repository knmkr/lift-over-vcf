#!/usr/bin/env bash

#
mkdir -p bin
cd bin

case "$OSTYPE" in
    darwin*) wget -c http://hgdownload.cse.ucsc.edu/admin/exe/macOSX.x86_64/liftOver ;;
    *)       wget -c http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/liftOver ;;
esac

chmod 755 liftOver

cd ..

#
mkdir -p chain
cd chain

# from hg18/b36
wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg19.over.chain.gz
wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg38.over.chain.gz

# from hg19/b37
wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz
wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz

# from hg38/b38
wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg38/liftOver/hg38ToHg19.over.chain.gz

cd ..
