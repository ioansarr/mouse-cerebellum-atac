#!/bin/bash

echo `date`

cd ~/Mouse_Cereb/011_integrate_RNAseq/Vladoiu_2019

for i in e10 e12 e13 e15 e17 P0 P4 P7 P14;
do
        cp Integrate_atac_with_Vladoiu.Rmd Integrate_atac_with_Vladoiu_"$i".Rmd
        nice -n 5 Rscript --vanilla -e "rmarkdown::render('Integrate_atac_with_Vladoiu_$i.Rmd', params = list(atac='$i'))"&
done

wait

echo `date`
echo Done!
