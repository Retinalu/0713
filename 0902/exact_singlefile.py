import Bio
from Bio import SeqIO


AllFile_name = "fastq_runid_dbd21548f712f4922d76e700e53b5e3159b28e68_0.fastq"


Total_files = SeqIO.parse (AllFile_name,"fastq")


for file in Total_files:
    Single_file = next(Total_files)
    Descript = Single_file.description
    seq_len  = len(Single_file.seq)
    if seq_len < 3000:
        continue
    start_p  = Descript.index('read')
    single_filename = './SingleFile/' + Descript[start_p:start_p + 18] + '.fastq'
    SeqIO.write(Single_file, single_filename, "fastq")
