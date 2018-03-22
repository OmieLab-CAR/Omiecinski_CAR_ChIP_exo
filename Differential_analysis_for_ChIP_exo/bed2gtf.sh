
#covert the input bed file to GTF format
#change the start to 1-based coordinate by adding 1 to the start


set -ue

input=$1
output=ben_chip_all_merge.gtf
cat $input | awk '{start=$2+1; name=$1"_"start"_"$3; print $1"\tunknown\texon\t"start"\t"$3"\t.\t.\t.\tgene_id \""name"\"; gene_name \""name"\"; transcript_id \""name"\"; tss_id \""name"\";"}' >$output
