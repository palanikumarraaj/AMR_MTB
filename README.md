# MTB AMR detection
## WHO based mutation catalogue for AMR detection

- WHO second version "Catalogue of mutations in Mycobacterium tuberculosis complex and their association with drug resistance"
- Link: https://www.who.int/publications/i/item/9789240028173

## I/O files

- 2 Supporting .csv files were used for the Rscript.
- Major input file as VCF derived .tsv from freebayes with or without annotaion.
- Rscript uses CHROM, POS, REF, and ALT columns alone from the .tsv file.

Supporting input files used for Rscript usage and result generation:

> MTB_mutations.csv
> MTB_Mutation_Catalogue.csv

## Rscript usage

```sh
Rscript WHO_MTB.R ERR7975646.tsv
```

ERR7975646.tsv is the model .tsv file generated from VCF file.

- To make .tsv file from VCF using shell command use the model below

```sh
cat ERR7975646.vcf | grep -v "##" > ERR7975646.tsv
```

 Once .tsv file made, make sure to remove # symbol in the first line of header


 # Thank you
