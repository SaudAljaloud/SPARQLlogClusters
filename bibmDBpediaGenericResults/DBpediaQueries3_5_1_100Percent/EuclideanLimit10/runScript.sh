#/bin/sh
echo "cleaning the xml files!!"
./clean.sh
echo "converting xmls to csvs!!"
./xmlToCsv.sh
echo "creating csv dir!!"
mkdir csv
sleep 5
mv *.csv csv/
echo "merging multiple csvs into single csv file containing QPS and QMPH matrices!!"
sleep 5
./csvsToSingleCsv.sh
echo "Stats.csv file is created :)"