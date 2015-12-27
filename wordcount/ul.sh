#!/bin/sh
/opt/hadoop/bin/hadoop fs -mkdir /tmp/wordcount
/opt/hadoop/bin/hadoop fs -mkdir /tmp/wordcount/input
/opt/hadoop/bin/hadoop fs -put -f joyce.txt /tmp/wordcount/input
