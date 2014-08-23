#!/bin/sh

# Build tests
strc -i trans/sltc.str -m tests -la stratego-lib -la stratego-gpp -I . -I lib -o bin/tests
