time bash /home2/ayh8/dREG/run_dREG.bsh Sample_K562UNT_121109_proseq_1_QC_plus.bw Sample_K562UNT_121109_proseq_1_QC_minus.bw dREG/Sample_K562UNT_121109_proseq_1_QC asvm.gdm.6.6M.20170828.rdata 16 0

for i in 1 5 10 15 20 25 30 50 100;
    do time bash /home2/ayh8/dREG/run_dREG.bsh \
        Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.+.bw \
        Sample_K562UNT_121109_proseq_1_QC.sort.${i}e6.-.bw \
        dREG/Sample_K562UNT_121109_proseq_1_QC.${i}e6 \
        asvm.gdm.6.6M.20170828.rdata 16 0;
done