sortbam:
	#sort .bam file to _s.bam
	ls *bam | sed 's/.bam//' | parallel -j 8 --progress --verbose '~/src/samtools sort -O BAM {}.bam > {.}_s'

rmdup:
	#remove duplicated reads for sorted _s.bam
	ls *_s.bam | sed 's/_s.bam//' | parallel -j 8 --progress --verbose '~/src/samtools rmdup -s {}_s.bam {.}_rmdup.bam'

indexbam:
	#index .bam
	ls *.bam | parallel -j 8 --progress --verbose '~/src/samtools index {}'

separatermdup:
        #separate plus strand reads and minus strand reads from a bam file to a /separatestrands/ folder
	ls *_rmdup.bam | sed 's/.bam//' | parallel -j 8 --progress --verbose '~/src/samtools view -f 16 -b {}.bam > {.}_minus.bam'
	ls *_rmdup.bam | sed 's/.bam//' | parallel -j 8 --progress --verbose '~/src/samtools view -F 20 -b {}.bam > {.}_plus.bam'

bamtobedgraph:
	#convert bam to bedgraph file
	ls *bam | sed 's/.bam//' | parallel -j 8 --progress --verbose 'bedtools genomecov -ibam {}.bam -g ~/ref/mm10.fa.fai -bg > {.}.bedgraph'

converttotdf:
	#run the first line outside make, run this again.
	#ls *_minus.bedgraph |sed 's/_minus.bedgraph//'|parallel --progress awk \''{val=-($4);}{print $1"\t"$2"\t"$3"\t"val}'\' {}_minus.bedgraph ">" {}_minus.temp.bedgraph
	ls *_plus.bedgraph |sed 's/_plus.bedgraph//' | parallel 'cat {}_plus.bedgraph {}_minus.temp.bedgraph >{}.temp.bedgraph'
	rm -f **minus.temp.bedgraph
	ls *temp.bedgraph | sed 's/.temp.bedgraph//'|parallel 'sort -k 1,1 -k2n,2  {}.temp.bedgraph >{}.sorted.bedgraph'
	rm -f *temp.bedgraph
	ls *sorted.bedgraph | sed 's/.bedgraph//' | parallel -j 8 --progress --verbose '~/src/IGVTools/igvtools toTDF {}.bedgraph {.}.tdf ~/ref/mm10.fa'

macs14:
        #call peaks to control.bam, default setting
        ls *.bam | sed 's/.bam//' | parallel -j 8 --progress --verbose 'macs14 -t {}.bam -c chip_control_rmdup.bam -f BAM -g mm -n {.}'
