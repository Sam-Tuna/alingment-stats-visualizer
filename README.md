# Alingment Stats Visualizer
The [NCBI 16S RefSeq database](https://www.ncbi.nlm.nih.gov/refseq/targetedloci/16S_process/) is probably the most complete database for 16S sequences, but it's not integrated in any matagenomic classification pipeline, so a bit of patchwork is needed to use it. This repository contains 2 scripts that provide said patchwork.
For our study we used minimap2 to make the alingments, but it should work with any .bam file [samtools](https://github.com/samtools/samtools) can extract the stats from. To do that run:
```
samtools idxstats alignment.bam | sort -n -r -k 3 > alignment.stats
```

To run extnames.py a list of names for the sequences in the NCBI 16S RefSeq database is needed. It's possible to generate one having the database downloaded in a fasta file and running
```
grep ">" NCBI-16S.fasta > names.txt

Then open the vizualizer.R in RStudio and generate classification tables of the genera and species present.
