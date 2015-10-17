#!/bin/bash


#DatabaseName="Bigdata"
#EndPoint="http://localhost:7070/sparql"

#DatabaseName="Stardog"
#EndPoint="http://localhost:5820/BSBMRegex/query"

#DatabaseName="Sesame"
#EndPoint="http://localhost:7788/openrdf-workbench/repositories/BSBMRegex/query?limit=0"

#DatabaseName="Jena"
#EndPoint="http://localhost:3030/BSBM/sparql"

DatabaseName="virtuoso7"
EndPoint="http://localhost:8890/sparql"

#DatabaseName="Graphdb"
#EndPoint="http://localhost:5555/openrdf-workbench/repositories/BSBMRegex/query?limit=0"




#TestType2="Regex"
#TestType2="Generic"
TestType2="feasibleGeneric"








WorkLoad="100"

DatasetName="DBpedia"
DatasetVersion="3_5_1_"
TestType="feasibleClusters"
FolderType="Queries"

QueriesV=
WormupsV=
RunsV=
OutputFolder="feasibleLimit10Filtered"
OutputFileNameV=


mkdir -p ${DatasetName}${FolderType}${DatasetVersion}${WorkLoad}Percent/${OutputFolder}/${TestType2}/
mkdir -p logs/${OutputFolder}/${TestType2}/

nohup ./bsbmdriver -uc queries/${OutputFolder}/${TestType2}/ -w 5 -runs 50 -o ${DatasetName}${FolderType}${DatasetVersion}${WorkLoad}Percent/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_single.xml ${EndPoint} > logs/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_single.log
nohup ./bsbmdriver -seed 8188326 -uc queries/${OutputFolder}/${TestType2}/ -w 8 -mt 4 -runs 32 -o ${DatasetName}${FolderType}${DatasetVersion}${WorkLoad}Percent/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_4clients.xml ${EndPoint} > logs/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_4clients.log
nohup ./bsbmdriver -seed 9175932 -uc queries/${OutputFolder}/${TestType2}/ -w 16 -mt 8 -runs 64 -o ${DatasetName}${FolderType}${DatasetVersion}${WorkLoad}Percent/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_8clients.xml ${EndPoint} > logs/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_8clients.log
nohup ./bsbmdriver -seed 4187411 -uc queries/${OutputFolder}/${TestType2}/ -w 128 -mt 64 -runs 128 -o ${DatasetName}${FolderType}${DatasetVersion}${WorkLoad}Percent/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_64clients.xml ${EndPoint} > logs/${OutputFolder}/${TestType2}/${DatabaseName}_${DatasetName}${TestType}_${TestType2}_${WorkLoad}Percent_64clients.log

exit
