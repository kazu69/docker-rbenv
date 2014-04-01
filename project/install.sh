#!/bin/bash

FILE=$1
for line in  $(cat $FILE)
do
  rbenv install "$line"
done
