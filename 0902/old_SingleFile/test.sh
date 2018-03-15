#!/bin/sh

path=$(readlink -f .)
files=$(ls $path)
ref_file=long18s.fasta
path_graphmap=/root/software/graphmap/bin/Linux-x64
path_data=/root/Github/0713/0902/SingleFile

echo $files
for filename in $files
do
read_file=$filename
name=$(basename $read_file .fastq)


#echo $read_file

#cd $path_graphmap

#graphmap align -r $ref_file -d $read_file -o $path_data/graphmap_sam/align_$name.sam
#echo $path_data/graphmap_sam/align_$name.sam


done
#cd $path_data
