# Run a phenotype enrichment on the example
runoak -i sqlite:obo:fypo \
    -G phaf -g data/phenotype_annotations.phaf \
    enrichment -p i,p \
    -U lists/example.tsv \
    -B background_lists/protein_coding.txt \
    -O csv -o results/example_FYPO_enrichment.tsv \
    --cutoff 0.05

# Run a go enrichment on the example, still missing taxon constrains
runoak -i sqlite:obo:go \
    -G gaf -g data/gene_association.gaf \
    enrichment -p i,p \
    -U lists/example.tsv \
    -B background_lists/protein_coding.txt \
    -O csv -o results/example_GO_enrichment.tsv \
    --cutoff 0.05
