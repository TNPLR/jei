#!/usr/bin/perl
$_ = <>;
s/x\^([[:digit:]]+)/pow\(x, $1)/g;
print;
