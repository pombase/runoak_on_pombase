python shajahan_make_gene_lists.py

# Run a phenotype enrichment on aal1D
echo "running phenotype enrichment on aal1D"
runoak -i sqlite:obo:fypo \
    -G phaf -g data/phenotype_annotations.phaf \
    enrichment -p i,p \
    -U data/aal1D_Any_Two_Overlapped_list.txt \
    -B data/aal1D_Background_list.txt \
    -O csv -o results/aal1D_FYPO_enrichment.tsv \
    --cutoff 0.05

# Run a go enrichment on aal1D
echo "running go enrichment on aal1D"
runoak -i sqlite:obo:go \
    -G gaf -g data/gene_association.gaf \
    enrichment -p i,p \
    -U data/aal1D_Any_Two_Overlapped_list.txt \
    -B data/aal1D_Background_list.txt \
    -O csv -o results/aal1D_GO_enrichment.tsv \
    --cutoff 0.05

# Run a phenotype enrichment on aal1OE
echo "running phenotype enrichment on aal1OE"
runoak -i sqlite:obo:fypo \
    -G phaf -g data/phenotype_annotations.phaf \
    enrichment -p i,p \
    -U data/aal1OE_Any_Two_Overlapped_list.txt \
    -B data/aal1OE_Background_list.txt \
    -O csv -o results/aal1OE_FYPO_enrichment.tsv \
    --cutoff 0.05

# Run a go enrichment on aal1OE
echo "running go enrichment on aal1OE"
runoak -i sqlite:obo:go \
    -G gaf -g data/gene_association.gaf \
    enrichment -p i,p \
    -U data/aal1OE_Any_Two_Overlapped_list.txt \
    -B data/aal1OE_Background_list.txt \
    -O csv -o results/aal1OE_GO_enrichment.tsv \
    --cutoff 0.05


