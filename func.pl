#!/usr/bin/perl
while (1) {
	print "f(x)=";
	$func = <>;
	open OUTFILE, ">function";
	print OUTFILE "f(x)=";
	print OUTFILE $func;
	system "make"
}
