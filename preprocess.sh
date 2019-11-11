#!/bin/bash

grep '^f(x)' function | sed 's/^f(x)=//g' | perl pp/mul.pl | perl pp/pow.pl | perl pp/log.pl | perl pp/last.pl > function.cpp
