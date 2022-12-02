#!/bin/bash
NUM1=2.0
NUM2=3.0
if (( $(echo "$NUM1 < $NUM2" | bc -l) ));
then
  echo $NUM1 is less than $NUM2
else
  echo $NUM2 is less than $NUM1
fi
