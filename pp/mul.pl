#!/usr/bin/perl
$_ = <>;
s/([[:digit:]]+)([[:alpha:]])/$1\*$2/g;
print;
