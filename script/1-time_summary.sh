BWA=/public/home/panxq/BME1063/BME1063_HW1/data/bwa_result
BOWTIE=/public/home/panxq/BME1063/BME1063_HW1/data/bowtie2_result
OPATH=/public/home/panxq/BME1063/BME1063_HW1/FinalReport/time_summary

cd $BWA
(cat ./dataset*/*.txt | grep -E 'time comsumption|real|user|sys') > ${OPATH}/bwa_time_summary.txt

cd $BOWTIE
(cat ./dataset*/*.txt | grep -E 'time comsumption|real|user|sys') > ${OPATH}/bowtie2_time_summary.txt

