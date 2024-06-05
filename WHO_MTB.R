library(dplyr)
args <- commandArgs(trailingOnly = TRUE)
fle <- args[1]
jse <- read.csv(file = "MTB_mutations.csv", header = TRUE)
oiw <- read.table(fle, sep = "\t", header = TRUE)
iww <- oiw[, c(1,2,4,5)]
merged_df <- iww %>%
  inner_join(jse, by = c("CHROM", "POS", "REF", "ALT"))
uow <- read.csv(file = "MTB_Mutation_Catalogue.csv", header = TRUE)
qew <- merged_df %>%
  inner_join(uow, by = c ("Variant"))
samplename <- gsub(".tsv", "", fle)
write.csv(qew, paste0(samplename,"_WHO.csv"), row.names=FALSE)
