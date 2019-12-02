#!/bin/bash

go build -o usedByC.o -buildmode=c-shared usedByC.go
gcc -o willUseGo willUseGo.c ./usedByC.o
./willUseGo

