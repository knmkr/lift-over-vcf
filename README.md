# lift-over-vcf

UCSC liftOver (genome build converter) for vcf format


## Usage example

Convert vcf (build 36) to build 37.

```
$ cat test/data/genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt.vcf| python lift-over.py --chain hg18ToHg19
```

Sample files are in test/data:

| filename                                                                 | description                                                                                                                          |
|--------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| test/data/genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt                     | [HapMap genotype data from FTP](http://hapmap.ncbi.nlm.nih.gov/downloads/genotypes/latest_phaseII_ncbi_b36/fwd_strand/non-redundant) |
| test/data/genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt.vcf                 | + convert to vcf                                                                                                                     |
| test/data/genotypes_chr12_JPT+CHB_r24_nr.b36_fwd.txt.liftover_to_b37.vcf | + lift over to b37                                                                                                                   |
