#!/bin/sh

cd SingleFile

path=$(readlink -f .)
allfiles=$(ls $path)

ref_path=$(readlink -f long18s.fasta)
ref_file=$(ls $ref_path)


for file in $allfiles
do
read_file=/root/Github/retinalu/0713/0902/SingleFile/$file
name=$(basename $file .fastq)

cd /root/software/graphmap/bin/Linux-x64

name_sam=./G/sam/align_$name.sam
graphmap align -r $ref_file -d $read_file -o $name_sam

name_m5=./G/m5/align_$name.m5
/root/software/INCSeq/utils/sam2blasr.py -i $name_sam -o $name_m5

name_con=./G/consensus/consen_$name.fasta
/root/software/pbdagcon/src/cpp/pbdagcon -t 2 -c 1 -m 5 $name_m5 > $name_con




done
