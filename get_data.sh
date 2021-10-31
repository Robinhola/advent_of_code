#!/bin/bash

COOKIE=$1
DAY=$2
YEAR=$3

ADVENT='https://adventofcode.com'
PREFIX="./$YEAR/data/day"

send_http () {
  day=$2
  url=$ADVENT/$YEAR/day/$day/input
  output=''

  if [ "$day" -lt 10 ]
  then
    output=$PREFIX'_0'$day.in
  else
    output=$PREFIX'_'$day.in
  fi

  curl "$url" -H 'cookie: session='"$COOKIE" > "$output"
}

if [ "$DAY" = all ]
then
  for i in {1..25}; do send_http "$COOKIE" "$i"; done 
else
  send_http "$COOKIE" "$DAY"
fi

