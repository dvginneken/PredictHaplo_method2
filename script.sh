#!/bin/bash

output_dir="$1"
haplohiv_folder="$2"
table="mastertable.tsv"

# Retrieve the name and locations of the sample consensus files to be taken together (replicates)
mkdir -p ${output_dir}/consensus
if [ "$(ls -A ${output_dir}/consensus)" ]; then
    echo "    Already grepped consensus name"
else
    for sample in `ls ${haplohiv_folder}/ec`
    do
        Rscript ConsensusFiles.R $table $haplohiv_folder $output_dir $sample
    done
fi

# Run the haplotyping pipeline
snakemake -j 8 --config output_dir=$output_dir haplohiv_folder=$haplohiv_folder table=$table --

