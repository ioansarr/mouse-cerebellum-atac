#!/bin/bash

cd ~/Mouse_Cereb/012_devPeaks/byCellType/homer

for i in *; do
	nice -n 5 findMotifsGenome.pl "$i"/interest.bed mm10 "$i"/"$name"_Homer/ -bg "$i"/background.bed -gc -size given -len 8,10,12&
done

wait

echo Done!
