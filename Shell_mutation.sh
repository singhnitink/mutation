#!/bin/bash
#conda activate
i=1
j=0
for a in 6 11 16
do
if [ $i == 1 ]
then
  echo $i
python3 modeller_mutate.py Q8GWY3 ${a} ALA P > mutate${i}.log
mv Q8GWY3ALA${a}.pdb mutation_${i}.pdb
else
python3 modeller_mutate.py mutation_${j} ${a} ALA P > mutate${i}.log
mv mutation_${j}ALA${a}.pdb mutation_${i}.pdb
  echo $i
fi
i=`expr $i + 1`
j=`expr $i - 1`
echo $i $a $j
done

echo "checkfile ${j}"
