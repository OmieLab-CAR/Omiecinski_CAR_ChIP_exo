set -ue

cat mCAR_PB_merge_midpoint_normed_filter_s.bed | sort -k1,1 -k2n,2n | bedtools merge -c 5 -o sum -i stdin > mCAR_PB_merge_midpoint_normed_filter_s_merge.bed
cat hCAR_PB_merge_midpoint_normed_filter_s.bed | sort -k1,1 -k2n,2n | bedtools merge -c 5 -o sum -i stdin > hCAR_PB_merge_midpoint_normed_filter_s_merge.bed
cat mCAR_TCP_merge_midpoint_normed_filter_s.bed | sort -k1,1 -k2n,2n | bedtools merge -c 5 -o sum -i stdin > mCAR_TCP_merge_midpoint_normed_filter_s_merge.bed
cat hCAR_CIT_merge_midpoint_normed_filter_s.bed | sort -k1,1 -k2n,2n | bedtools merge -c 5 -o sum -i stdin > hCAR_CIT_merge_midpoint_normed_filter_s_merge.bed

cat mCAR_IDR_transcriptome_Rodent_All_10kb_rank.bed | head -n 430 | bedtools intersect -a mCAR_PB_merge_midpoint_normed_filter_s_merge.bed -b stdin -wa > mCAR_PB_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed

cat mCAR_IDR_transcriptome_Rodent_All_10kb_rank.bed | head -n 560 | bedtools intersect -a mCAR_TCP_merge_midpoint_normed_filter_s_merge.bed -b stdin -wa > mCAR_TCP_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed

cat hCAR_IDR_transcriptome_Rodent_All_10kb_rank.bed | head -n 350 | bedtools intersect -a hCAR_PB_merge_midpoint_normed_filter_s_merge.bed -b stdin -wa > hCAR_PB_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed

cat hCAR_IDR_transcriptome_Rodent_All_10kb_rank.bed | head -n 350 | bedtools intersect -a hCAR_CIT_merge_midpoint_normed_filter_s_merge.bed -b stdin -wa > hCAR_CIT_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed

bedtools getfasta -fi ~/Ref/mm10/mm10.fa -bed mCAR_PB_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed -fo mCAR_PB_Rodent_Transcriptome_500.fa
bedtools getfasta -fi ~/Ref/mm10/mm10.fa -bed hCAR_PB_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed -fo hCAR_PB_Rodent_Transcriptome_500.fa
bedtools getfasta -fi ~/Ref/mm10/mm10.fa -bed mCAR_TCP_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed -fo mCAR_TCP_Rodent_Transcriptome_500.fa
bedtools getfasta -fi ~/Ref/mm10/mm10.fa -bed hCAR_CIT_merge_midpoint_normed_filter_s_merge_Rodent_transcriptome_500.bed -fo hCAR_CIT_Rodent_Transcriptome_500.fa