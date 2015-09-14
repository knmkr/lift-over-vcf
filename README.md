# lift-over-vcf

UCSC liftOver (genome build converter) for vcf format


## Usage example

### E.g., Convert 1000 Genomes (build 37) to build 38:

```
$ cat ${vcf}| python lift-over.py --chain hg19ToHg38
```

| filename in test/data                                                                   | description                                                                                                 |
|-----------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| ALL.chr15.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf                 | [1000 Genomes data from FTP](http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr15.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz) |
| ALL.chr15.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.liftover_to_b38.vcf | + lift over from b38                                                                                        |

### E.g., Convert HapMap (build 36) to build 37:

```
$ cat ${vcf}| python lift-over.py --chain hg18ToHg19
```

| filename in test/data                                          | description                                                                                                                          |
|----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt                     | [HapMap genotype data from FTP](http://hapmap.ncbi.nlm.nih.gov/downloads/genotypes/latest_phaseII_ncbi_b36/fwd_strand/non-redundant) |
| genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt.vcf                 | + convert to vcf                                                                                                                     |
| genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt.liftover_to_b37.vcf | + lift over from b37                                                                                                                 |
