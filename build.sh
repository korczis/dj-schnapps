#! /usr/bin/env sh

OUT_FORMATS=( jpg png ps svg )

m4 dots/infrastructure.dot.m4 > dots/infrastructure.dot

for i in "${OUT_FORMATS[@]}"
do
   dot -T${i} dots/infrastructure.dot -o assets/images/dots/infrastructure.${i}
done
