#!/bin/sh
shopt -s expand_aliases

alias time="command time"

specification=$1
specification_aterm=$(mktemp)
templates=$(mktemp)

echo "Template file: $templates"
echo "Specification ATerm: $specification_aterm"

sdf2table -i include/SLTC.def -m SLTC > /dev/null 2>&1
pack-sdf -i syntax/Input.sdf -o include/Input.def > /dev/null 2>&1
sdf2table -i include/Input.def -m Input > /dev/null 2>&1

sglri -p include/SLTC.tbl -i $specification -o $specification_aterm

bin/make-templates -i $specification_aterm -o $templates

time -f '%E' bin/typecheck -i $specification_aterm -t $templates > /dev/null
