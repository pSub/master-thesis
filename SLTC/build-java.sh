#!/bin/sh

STRATEGO_JAR=$(find $HOME/.eclipse -name strategoxt.jar | head -n 1)

java -jar $STRATEGO_JAR -m wrapped-typecheck -i trans/sltc.str -o bin/template-gen/template-gen.java -la stratego-lib -la stratego-gpp -la stratego-sdf -I . -I lib
java -jar $STRATEGO_JAR -m wrapped-typecheck -i trans/sltc.str -o bin/typechecker/typechecker.java -la stratego-lib -la stratego-gpp -la stratego-sdf -I . -I lib

cd bin/template-gen/ && javac -cp $STRATEGO_JAR template-gen.java && cd -
cd bin/typechecker/ && javac -cp $STRATEGO_JAR typechecker.java && cd -

# Executed like
#  java -cp $STRATEGO:. typechecker -i specification_aterm -t templates
