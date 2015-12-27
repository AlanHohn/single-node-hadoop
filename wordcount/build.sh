#!/bin/bash
cd src
CP=$(/opt/hadoop/bin/hadoop classpath)
javac -cp $CP wordcount/*.java
jar cf ../wc.jar wordcount/*.class
