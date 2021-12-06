#!/usr/bin/perl
use strict;
use warnings;

print "Type in 2 numbers and an operator and I'll print the results\n\n";
 
print "First number: ";
my $num1 = <STDIN>;
chomp($num1);
 
print "Second number: ";
my $num2 = <STDIN>;
chomp($num2);
 
print "The operator: ";
my $oper = <STDIN>;
chomp($oper);
 
my $result;
if ($oper eq "+") { $result = $num1 + $num2; }
if ($oper eq "-") { $result = $num1 - $num2; }
if ($oper eq "*") { $result = $num1 * $num2; }
if ($oper eq "/") {
    if ($num2 == 0) {
        print "\nCannot divide by 0\n";
        $result = "ERROR";
    } else {
        $result = $num1 / $num2;
    }
}
 
print "\nResult of $num1 $oper $num2 = $result\n";
