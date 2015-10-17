#!/bin/bash

basedir=${0%/*}
. ${basedir}/classpath.sh

javac -sourcepath src src/benchmark/generator/*.java src/com/openlinksw/bibm/bsbm/*.java src/com/openlinksw/bibm/connection/*.java src/com/openlinksw/bibm/qualification/*.java -d bin/

