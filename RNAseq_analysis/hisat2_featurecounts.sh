#hisat2 featureCounts

set -ue

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517152_1.fastq -2 ../night_run/SRR5517152_2.fastq | samtools sort -O BAM --threads 8 > WT_CO_2_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517153_1.fastq -2 ../night_run/SRR5517153_2.fastq | samtools sort -O BAM --threads 8 > WT_CO_3_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517154_1.fastq -2 ../night_run/SRR5517154_2.fastq | samtools sort -O BAM --threads 8 > WT_TC_1_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517155_1.fastq -2 ../night_run/SRR5517155_2.fastq | samtools sort -O BAM --threads 8 > WT_TC_2_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517156_1.fastq -2 ../night_run/SRR5517156_2.fastq | samtools sort -O BAM --threads 8 > WT_TC_3_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517163_1.fastq -2 ../night_run/SRR5517163_2.fastq | samtools sort -O BAM --threads 8 > TG_CO_1_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517164_1.fastq -2 ../night_run/SRR5517164_2.fastq | samtools sort -O BAM --threads 8 > TG_CO_2_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517165_1.fastq -2 ../night_run/SRR5517165_2.fastq | samtools sort -O BAM --threads 8 > TG_CO_3_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517166_1.fastq -2 ../night_run/SRR5517166_2.fastq | samtools sort -O BAM --threads 8 > TG_CI_1_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517167_1.fastq -2 ../night_run/SRR5517167_2.fastq | samtools sort -O BAM --threads 8 > TG_CI_2_hisat2_g.bam

~/bin/hisat2 -q -p 8 -x ~/Ref/hisat2/mm10 -1 ../night_run/SRR5517168_1.fastq -2 ../night_run/SRR5517168_2.fastq | samtools sort -O BAM --threads 8 > TG_CI_3_hisat2_g.bam

~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/CUI_FC.txt WT_CO_1_hisat2_g.bam WT_CO_2_hisat2_g.bam WT_CO_3_hisat2_g.bam WT_TC_1_hisat2_g.bam WT_TC_2_hisat2_g.bam WT_TC_3_hisat2_g.bam TG_CO_1_hisat2_g.bam TG_CO_2_hisat2_g.bam TG_CO_3_hisat2_g.bam TG_CI_1_hisat2_g.bam TG_CI_2_hisat2_g.bam TG_CI_3_hisat2_g.bam

~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -M -T 8 -o ../featureC/CUI_FC_M.txt WT_CO_1_hisat2_g.bam WT_CO_2_hisat2_g.bam WT_CO_3_hisat2_g.bam WT_TC_1_hisat2_g.bam WT_TC_2_hisat2_g.bam WT_TC_3_hisat2_g.bam TG_CO_1_hisat2_g.bam TG_CO_2_hisat2_g.bam TG_CO_3_hisat2_g.bam TG_CI_1_hisat2_g.bam TG_CI_2_hisat2_g.bam TG_CI_3_hisat2_g.bam 

~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10.gtf -s 2 -T 8 -o ../featureC/CUI_FC_ENSM.txt WT_CO_1_hisat2_g.bam WT_CO_2_hisat2_g.bam WT_CO_3_hisat2_g.bam WT_TC_1_hisat2_g.bam WT_TC_2_hisat2_g.bam WT_TC_3_hisat2_g.bam TG_CO_1_hisat2_g.bam TG_CO_2_hisat2_g.bam TG_CO_3_hisat2_g.bam TG_CI_1_hisat2_g.bam TG_CI_2_hisat2_g.bam TG_CI_3_hisat2_g.bam



#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -M -T 8 -o ../featureC/WT_CO_1_FC_M.txt WT_CO_1_hisat2_g.bam 

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/WT_CO_2_FC.txt WT_CO_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/WT_CO_2_FC_M.txt WT_CO_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/WT_CO_3_FC.txt WT_CO_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/WT_CO_3_FC_M.txt WT_CO_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/WT_TC_1_FC.txt WT_TC_1_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/WT_TC_1_FC_M.txt WT_TC_1_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/WT_TC_2_FC.txt WT_TC_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/WT_TC_2_FC_M.txt WT_TC_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/WT_TC_3_FC.txt WT_TC_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/WT_TC_3_FC_M.txt WT_TC_3_hisat2_g.bam


#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CO_1_FC.txt TG_CO_1_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -M -T 8 -o ../featureC/TG_CO_1_FC_M.txt TG_CO_1_hisat2_g.bam 

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CO_2_FC.txt TG_CO_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/TG_CO_2_FC_M.txt TG_CO_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CO_3_FC.txt TG_CO_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/TG_CO_3_FC_M.txt TG_CO_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CI_1_FC.txt TG_CI_1_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/TG_CI_1_FC_M.txt TG_CI_1_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CI_2_FC.txt TG_CI_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/TG_CI_2_FC_M.txt TG_CI_2_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -o ../featureC/TG_CI_3_FC.txt TG_CI_3_hisat2_g.bam

#~/bin/featureCounts -p -t exon -g gene_id -a ~/Ref/mm10/mm10_UCSC.gtf -s 2 -T 8 -M -o ../featureC/TG_CI_3_FC_M.txt TG_CI_3_hisat2_g.bam 