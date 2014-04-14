#!/bin/bash

FILE=$1

if [ -n $FILE ]; then
  FILE='/root/.ruby-version'
fi

for VERSION in  $(cat $FILE)
do
  rbenv install "$VERSION"
done
