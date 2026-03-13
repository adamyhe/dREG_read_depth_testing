# Subsample reads from bam file from Core and Martins (2014) K562 library

# Total reads: 187036755
# Subsample reads: 1e6, 5e6, 10e6, 15e6, 20e6, 25e6, 30e6, 50e6, 100e6

samtools view -b -s 0.0054 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.1e6.bam
samtools view -b -s 0.027 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.5e6.bam
samtools view -b -s 0.054 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.10e6.bam
samtools view -b -s 0.081 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.15e6.bam
samtools view -b -s 0.107 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.20e6.bam
samtools view -b -s 0.134 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.25e6.bam
samtools view -b -s 0.161 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.30e6.bam
samtools view -b -s 0.27 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.50e6.bam
samtools view -b -s 0.54 Sample_K562UNT_121109_proseq_1_QC.sort.bam > Sample_K562UNT_121109_proseq_1_QC.sort.100e6.bam

bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.1e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.1e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.5e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.5e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.10e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.10e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.15e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.15e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.20e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.20e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.25e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.25e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.30e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.30e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.50e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.50e6.bed.gz
bedtools bamtobed -i Sample_K562UNT_121109_proseq_1_QC.sort.100e6.bam | awk 'BEGIN{OFS="\t"} ($5 > 0){print $0}' | awk 'BEGIN{OFS="\t"} ($6 == "+") {print $1,$2,$2+1,$4,$5,"-"}; ($6 == "-") {print $1,$3-1,$3,$4,$5,"+"}' | grep -vE "chrM|_|rRNA" | sort-bed - | gzip > Sample_K562UNT_121109_proseq_1_QC.sort.100e6.bed.gz

for i in 1 5 10 15 20 25 30 50 100; do echo "bedtools genomecov -bg -i Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.bed.gz -g hg38.chrom.sizes -strand + > Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.+.bg"; done | parallel
for i in 1 5 10 15 20 25 30 50 100; do echo "bedtools genomecov -bg -i Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.bed.gz -g hg38.chrom.sizes -strand - > Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.-.bg"; done | parallel

for i in 1 5 10 15 20 25 30 50 100; do echo "time bedGraphToBigWig Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.+.bg hg38.chrom.sizes Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.+.bw"; done | parallel
for i in 1 5 10 15 20 25 30 50 100; do echo "time bedGraphToBigWig Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.-.bg hg38.chrom.sizes Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.-.bw"; done | parallel