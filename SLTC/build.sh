#!/bin/sh

FLAGS="-la stratego-lib"
FLAGS="$FLAGS -la stratego-gpp"
FLAGS="$FLAGS -la stratego-sdf"
FLAGS="$FLAGS -I ."
FLAGS="$FLAGS -I lib"

# Build tests
strc -i trans/sltc.str -m tests $FLAGS -o bin/tests

# Build template generator
strc -i trans/sltc.str -m wrapped-generate-templates $FLAGS -o bin/make-templates

# Build a type checker
strc -i trans/sltc.str -m wrapped-typecheck $FLAGS -o bin/typecheck

