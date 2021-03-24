# Newt-TTX-Resistance
Investigation of the evolution of TTX autoresistance in newts and related salamanders.


This repository includes datasets used in the analyses conducted for Gendreau et al. (2021) (link to paper). See manuscript for methods.




### 1. Phylogenetic trees

Multiple sequence alignments of all *SCNA* paralogs found in amphibians and outgroup Danio rerio can be downloaded here: [All *SCNA*s amino acid alignment](SCNA_protein_alignment_RAxML_Tree.fasta) (**Fig. 1** in Gendreau et al. (2021)) and here: [All *SCNA*s full coding sequence alignment](SCN_CDS_alignment_RAxML_Tree.fasta) (**Fig. S2** in Gendreau et al. (2021)).

Alignment of coding sequences for only exon 26 from all *SCNA* parlogs (**Fig. S3** in Gendreau et al. (2021)) can be found here: [All SCNAs exon 26 alignment](Exon_26_all_SCNAs.fasta).

Coding sequence alignment for exon 26 of only *SCN4A* (**Fig. 2** in Gendreau et al. (2021)) can be downloaded here: [SCN4A exon 26 CDS alignment](SCN4A_exon26_RAxML_Tree.fasta)


### 2. Evolutionary rate and selection with PAML

Alignment files used for PAML analyses:
* [*SCN1A*](SCN1A_CDS_alignment.fasta)
* [*SCN2A*](SCN2A_CDS_alignment.fasta)
* [*SCN3A*](SCN3A_CDS_alignment.fasta)
* [*SCN4A*](SCN4A_CDS_alignment.fasta)
* [*SCN5A*](SCN5A_CDS_alignment.fasta)
* [*SCN8A*](SCN8A_CDS_alignment.fasta)


### 3. Gene conversion

* [Alignment file](SCNA_amphibian_CDS_alignment_geneconv.fasta) and [configuration file](Geneconv_config_SCN1A-2A-3A.cfg) used to search for gene conversion in *SCN1A*, *SCN2A*, and *SCN3A*. Output files: [SCNA_amphibian_CDS_alignment_PAL2NAL.frags](SCNA_amphibian_CDS_alignment_PAL2NAL.frags) and [SCNA_amphibian_CDS_alignment_PAL2NAL.sum](SCNA_amphibian_CDS_alignment_PAL2NAL.sum).

* [Alignment file](SCN4A_exon_26_alignment_geneconv.fasta) and [configuration file](Geneconv_config_SCN4A.cfg) used to search for gene conversion in *SCN4A* exons 26a and 26b. Output files: [SCN4ADIVa_2.frags](SCN4ADIVa_2.frags) and [SCN4ADIVa_2.sum](SCN4ADIVa_2.sum)


