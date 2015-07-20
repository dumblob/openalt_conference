#!/bin/sh

SCHEMA="./schema.txt"
RESPONSES_DIR="./20141102-responses"

IFS="
"

for item in $(cat $SCHEMA); do # for each line in header file
  /usr/bin/echo -n "\""
  /usr/bin/echo -n $item | sed -e 's/^[ \t]*//' | sed -e 's/"/\"/' # trim and escape
  /usr/bin/echo -n "\";"
done
/usr/bin/echo "" # new line

for fn in $(ls -1 $RESPONSES_DIR); do # for each file in responses dir

  for item in $(cat $RESPONSES_DIR/$fn); do # for each line
    /usr/bin/echo -n "\""
    /usr/bin/echo -n $item | sed -e 's/^[ \t]*//' | sed -e 's/"/\"/' # trim and escape
    /usr/bin/echo -n "\";"
  done

  /usr/bin/echo "" # new line
done