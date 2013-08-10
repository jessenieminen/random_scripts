#!/bin/bash

day_of_week=$(date +%A)

curl http://theroncatering.fi/pitajanmaki.txt | awk '/TIISTAI/{c=8;next}c{c--;print}' | iconv -f iso-8859-1 -t utf-8 | say
