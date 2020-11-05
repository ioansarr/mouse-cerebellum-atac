#!/bin/sh

## Input: Fixed width peaks (500bp)
mouse_summit='/home/ioansarr/Mouse_Cereb/006_peaks/Mouse_Cerebellum_reproducible_peaks.bed'

## Parameters
## Minimum coverage of the peak in the orthologous region in the other species
minmatch=0.1
## Minimum size of peaks and orthologous regions
size=50

## Rat
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToRn6.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_rat.bed mouse_rat_unlifted.bed&

## Guinea pig
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToCavPor3.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_guinea_pig.bed mouse_guinea_pig_unlifted.bed&

## Rabbit
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToOryCun2.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_rabbit.bed mouse_rabbit_unlifted.bed&

## Human
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToHg38.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_human.bed mouse_human_unlifted.bed&

## Rhesus
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToRheMac10.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_rhesus.bed mouse_rhesus_unlifted.bed&

## Marmoset
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToCalJac3.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_marmoset.bed mouse_marmoset_unlifted.bed&

## Dog
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToCanFam3.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_dog.bed mouse_dog_unlifted.bed&

## Cow
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToBosTau9.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_cow.bed mouse_cow_unlifted.bed&

## Elephant
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToLoxAfr3.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_elephant.bed mouse_elephant_unlifted.bed&

## Opossum
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToMonDom5.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_opossum.bed mouse_opossum_unlifted.bed&

## Platypus
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToOrnAna1.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_platypus.bed mouse_platypus_unlifted.bed&

## Chicken
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToGalGal6.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_chicken.bed mouse_chicken_unlifted.bed&

## Zebra finch
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToTaeGut1.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_zebra_finch.bed mouse_zebra_finch_unlifted.bed&

## Anolis
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToAnoCar2.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_anolis.bed mouse_anolis_unlifted.bed&

## Xenopus
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToXenTro9.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_xenopus.bed mouse_xenopus_unlifted.bed&

## Zebrafish
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToDanRer11.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_zebrafish.bed mouse_zebrafish_unlifted.bed&

## Medaka
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToOryLat2.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_medaka.bed mouse_medaka_unlifted.bed&

## Lamprey
liftOver $mouse_summit /home/ioansarr/Resources/liftover_chains/mm10ToPetMar3.over.chain.gz -minMatch=$minmatch -multiple -minSizeQ=$size -minSizeT=$size mouse_lamprey.bed mouse_lamprey_unlifted.bed&

wait

echo Done!
