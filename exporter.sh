#!/bin/bash

myfun() {
  FILE=sampledata.txt
  VAR=$(shuf -i 700-900 -n 1)
  if [ ! -e "$FILE" ]; then
    curl -s -XPOST -H 'api-key:c3f9df2b-e19a-11eb-9529-0242ac110007' 'https://api.extendsclass.com/csv-generator/templates/svqetlp49/generate' | head -$VAR > tmpfile && mv tmpfile sampledata.txt
    echo 'Sha creat un nou fitxer de dades'
  fi
}
myfun
