# Alingment Stats Visualizer
The [NCBI 16S RefSeq database](https://www.ncbi.nlm.nih.gov/refseq/targetedloci/16S_process/) is probably the biggest database for 16S sequences, and you can align reads to it for classification. This repository contains 2 scripts that help with visualizing these alignment results.
For our study we used minimap2 to make the alignments, but it should work with any .bam file [samtools](https://github.com/samtools/samtools) can extract the stats from. To do that run:
```
samtools idxstats alignment.bam | sort -n -r -k 3 > alignment.stats
```

To run extnames.py a list of names for the sequences in the NCBI 16S RefSeq database is needed. It's possible to generate one having the database downloaded in a fasta file and running
```
grep ">" NCBI-16S.fasta > names.txt
```

Then open visualization.R in RStudio and generate classification tables of the genera and species present.
