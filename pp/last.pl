print "#include <cmath>\n";
print "double function(double x) {\n\treturn ";
$_ = <>;
s/\n$/;/;
print;
print "\n}\n";
