setwd("C:/Users/PC/OneDrive/Documentos/Systems_Biology_master/Year 2/Network Biology/Project/third_option")

# Load libraries
library(biomaRt)

# Load the data
data <- read.csv("E-GEOD-42212-analytics.csv")
colnames(data) <- c("ensembl_gene_id", "Gene.Name", "p.value", "log2foldchange")

# Get the ensembl id for genes 
ens_id <- data.frame(data$Gene.Name)

# Load gene names
gene_names <- read.table("genes.txt", header = TRUE, sep = "\t")
colnames(gene_names) <- c("Gene.Name")

# Merge data and gene names
mergdeData <- merge(data, gene_names, by = "Gene.Name")

# Save the merged data
write.csv(mergdeData, file = "mergeExp.csv", row.names = FALSE)

# Save ensembl ids
merge_ens <- mergdeData$ensembl_gene_id
write(merge_ens, file = "ens_id.txt")
