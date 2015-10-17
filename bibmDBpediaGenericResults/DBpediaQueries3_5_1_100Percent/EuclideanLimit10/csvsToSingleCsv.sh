#/bin/sh

echo "Bigdata,GraphDB,Jena,Sesame,Stardog,Virtuoso" > Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$29}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*single* >> Stats.csv
echo "" >> Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$23}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*single* >> Stats.csv
echo "" >> Stats.csv
echo "" >> Stats.csv
echo "" >> Stats.csv

echo "qmph" >> Stats.csv
echo "Bigdata,GraphDB,Jena,Sesame,Stardog,Virtuoso" >> Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$12}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*single* >> Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$13}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*_4clients* >> Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$13}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*8clients* >> Stats.csv
awk -F "," 'FNR==1{f++}{a[f,FNR]=$13}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s,",a[y,x]);print ","}}' csv/*64clients* >> Stats.csv


perl -pi -w -e 's/.*-,-,.*\n//g;' Stats.csv
perl -pi -w -e 's/.*qmph,qmph.*\n//g;' Stats.csv
