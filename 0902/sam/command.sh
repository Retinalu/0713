#!/bin/sh


/root/software/INCSeq/utils/sam2blasr.py -i fastq_runid_dbd21548f712f4922d76e700e53b5e3159b28e68_0.sam -r ref_long18s.fasta -o result.m5
/root/software/pbdagcon/src/cpp/pbdagcon -t 2 -c 1 -m 5 result.m5 > ./out/result.fasta


blastn -task blastn -query ref_long18s.fasta   -subject ./out/result.fasta    -outfmt "6 sseqid sstart send slen qstart qend qlen evalue score length nident mismatch gaps sseq qseq qseqid" > fastq_runid_dbd21548f712f4922d76e700e53b5e3159b28e68_0.out
