#!/bin/bash
/opt/hadoop/bin/hadoop fs -rm -r -f /tmp/wordcount/output
/opt/hadoop/bin/hadoop jar wc.jar wordcount/WordCount /tmp/wordcount/input /tmp/wordcount/output
