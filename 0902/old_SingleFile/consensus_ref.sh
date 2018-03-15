#!/bin/sh
path=$(readlink -f .)
file=$(ls $path)
for filename in $file
do
echo $filename
done






#echo $filename
#fasta_subject=$filename
#fasta_query=long18s.fasta
#ConsensusName=$(basename $fasta_subject .fastq)


#/root/software/graphmap/graphmap align -r $fasta_query -d $fasta_subject -o ./graphmap_sam/alignment_$ConsensusName.sam
#/root/software/INCSeq/utils/sam2blasr.py -i ./graphmap_sam/alignment_$ConsensusName.sam -o ./graphmap_m5/alignment_$ConsensusName.m5
#/root/software/pbdagcon/src/cpp/pbdagcon -t 2 -c 1 -m 5 ./graphmap_m5/alignment_$ConsensusName.m5 > ./graphmap_consensus/consensus_$ConsensusName.fasta

#done
