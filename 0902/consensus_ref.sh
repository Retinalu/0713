#!/bin/sh

path_file=/root/Github/retinalu/0713/0902/SingleFile/

echo "hello world"
mkdir contest
cd contest
mkdir contest2


#path=$(readlink -f .)
#files=$(ls $path)

#ref_file=long18s.fasta

#for filename in $files
#do
#read_file=$filename
#ConsensusName=$(basename $read_file .fastq)


#/root/software/graphmap/bin/Linux-x64/graphmap align -r $ref_file -d $read_file -o ./graphmap_sam/alignment_$ConsensusName.sam
#/root/software/INCSeq/utils/sam2blasr.py -i ./graphmap_sam/alignment_$ConsensusName.sam -o ./graphmap_m5/alignment_$ConsensusName.m5
#/root/software/pbdagcon/src/cpp/pbdagcon -t 2 -c 1 -m 5 ./graphmap_m5/alignment_$ConsensusName.m5 > ./graphmap_consensus/consensus_$ConsensusName.fasta

#done

