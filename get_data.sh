set -e

# Create data directory if it does not exist
mkdir -p data

# Download phenotype annotations
curl -k https://www.pombase.org/data/annotations/Phenotype_annotations/phenotype_annotations.pombase.phaf.gz --output  data/phenotype_annotations.phaf.gz
gzip -fd data/phenotype_annotations.phaf.gz

# Download GO annotations
curl https://www.pombase.org/data/annotations/Gene_ontology/gene_association.pombase.gz --output  data/gene_association.gaf.gz
gzip -fd data/gene_association.gaf.gz

# Create background lists from PomBase queries
mkdir -p background_lists
python get_background_lists.py

