#! /usr/bin/env sh

m4 infrastructure.dot.m4 > infrastructure.dot

dot -Tjpg infrastructure.dot -o dots/infrastructure.jpg
dot -Tpng infrastructure.dot -o dots/infrastructure.png
dot -Tps infrastructure.dot -o dots/infrastructure.ps
dot -Tsvg infrastructure.dot -o dots/infrastructure.svg