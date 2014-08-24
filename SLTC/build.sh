#!/bin/sh

# Build tests
strc -i trans/sltc.str -m tests -la stratego-lib -la stratego-gpp -I . -I lib -o bin/tests

# Generate a valid tbl
sdf2table -i include/SLTC.def -m SLTC

# Build template generator
strc -i trans/sltc.str -m wrapped-generate-templates -la stratego-lib -la stratego-gpp -I . -I lib -o bin/.make-templates

echo "sglri -p include/SLTC.tbl -i syntax/specifications/Subtyping-algorithmic/Typesystem.slt | bin/.make-templates" > bin/make-templates
chmod +x bin/make-templates

# Generate def for input terms
pack-sdf -i syntax/Input.sdf -o include/Input.def

# Generate tbl for input terms
sdf2table -i include/Input.def -m Input

# Build a type checker
strc -i trans/sltc.str -m wrapped-typecheck -la stratego-lib -la stratego-gpp -I . -I lib -o bin/.typecheck
echo 'sglri -p include/SLTC.tbl -i $1 | bin/.make-templates -t $2' > bin/typecheck
chmod +x bin/typecheck
