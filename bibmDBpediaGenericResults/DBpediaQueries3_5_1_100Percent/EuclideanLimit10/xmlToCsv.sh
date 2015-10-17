#/bin/sh


for f in *.xml
do
echo "$f"
    if grep -q xml $f; then
java -jar ~/Downloads/xml2csv-conv-0.0.1/xml2csv-conv.jar $f $f.csv
    fi
done
