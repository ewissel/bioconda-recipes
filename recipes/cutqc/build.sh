#! /usr/bin/env bash

mkdir -p $PREFIX/bin
## add path of RMD file
sed "s,fastqc_report.Rmd,$PREFIX/bin/fastqc_report.Rmd," $SRC_DIR/cutqc.sh > $PREFIX/bin/cutqc
sed "s,fastqc_single_report.Rmd,$PREFIX/bin/fastqc_single_report.Rmd," $SRC_DIR/cutqc_onlyQC.sh > $PREFIX/bin/cutqc_onlyQC

cp $SRC_DIR/fastqc_report.Rmd $PREFIX/bin/fastqc_report.Rmd
cp $SRC_DIR/fastqc_single_report.Rmd $PREFIX/bin/fastqc_single_report.Rmd
