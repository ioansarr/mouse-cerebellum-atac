#!/bin/bash

echo `date`

cd ~/Mouse_Cereb/010_byStage

for i in e10 e11 e12 e13 e15 e17 P0 P4 P7 P14 P63;
do
	cp 001_ArchR_process_byStage.Rmd ArchR_Subcluster_byStage_"$i".Rmd
	nice -n 5 Rscript --vanilla -e "rmarkdown::render('ArchR_Subcluster_byStage_$i.Rmd', params = list(timepoint='$i'))"&
done

wait

echo `date`
echo Done!

