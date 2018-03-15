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

name_out=./G/out/align_$name.out
name_cb_sub=./G/cb_sub/cb_sub_$name.out

blastn -task blastn -query $ref_file -subject $read_file -outfmt "6 sseqid sstart send slen qstart qend qlen evalue score length nident mismatch gaps sseq qseq qseqid"  > $name_out
blastn -task blastn -query $ref_file -subject $read_file > $name_cb_sub

name_m5=./G/m5/align_$name.m5
/root/software/INCSeq/utils/blastn2blasr.py -i $name_out -o $name_m5

name_con=./G/consensus/consen_$name.fasta
/root/software/pbdagcon/src/cpp/pbdagcon -t 2 -c 1 -m 5 $name_m5 > $name_con

name_cb=./G/cb/cb_$name.out
blastn -task blastn -query $ref_file -subject $name_con  > $name_cb

done
