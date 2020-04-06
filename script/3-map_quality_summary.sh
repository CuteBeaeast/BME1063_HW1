BWA=/public/home/panxq/BME1063/BME1063_HW1/data/bwa_result
BOWTIE=/public/home/panxq/BME1063/BME1063_HW1/data/bowtie2_result
OPATH=/public/home/panxq/BME1063/BME1063_HW1/FinalReport/mapping_summary

for P in ${BWA}/dataset*
do
cd ${P}
FILE=./*.sam
dwgsim_eval -S ${FILE} 2>&- | sed '/#/d' > ${OPATH}/bwa_mapping/$(basename ${FILE}).quality
done

for P in ${BOWTIE}/dataset*
do
cd ${P}
FILE=./*.sam
dwgsim_eval -S ${FILE} 2>&- | sed '/#/d' > ${OPATH}/bowtie2_mapping/$(basename ${FILE}).quality
done
