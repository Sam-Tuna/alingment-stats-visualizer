# Alingment Stats Visualizer
Scripts to visualize the results from a metagenomic study mapping 16S sequences to the NCBI 16S database.
For our study we used minimap2 to make the alingments, but it should work with any .bam file [samtools](https://github.com/samtools/samtools) can extract the stats from. To do that run:
```
samtools idxstats alignment.bam | sort -n -r -k 3 > alignment.stats"
```

To run extnames.py a list of names for the sequences in the NCBI 16S RefSeq database is needed. It's possible to generate one having the database downloaded in a fasta file and running
```
grep ">" NCBI-16S.fasta > names.txt"
