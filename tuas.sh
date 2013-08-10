#!/bin/bash

curl http://ruokalistat.net/text/ | sed 's/\"//' | sed 's/\<p\>//' | sed 's/\<br\>//' | awk '/TUAS-talo/{c=3;next}c{c--;print}' | iconv -f iso-8859-1 -t utf-8 | say
