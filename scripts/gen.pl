#!/usr/bin/perl
#UlysiteGen

use strict;
use warnings;

print "Ulysite generator";
open my $fh, '<', "templates/index.html" or die "index file doesn't exist.";
my $index = do {local $/; <$fh>};

open $fh, '<', "templates/project.html" or die "project template doesn't exist.";
my $project = do {local $/; <$fh>};

open $fh, '<', "templates/essay.html" or die "essay template doesn't exist.";
my $essay = do {local $/; <$fh>}

unlink glob "'../essays/*.*'";
unlink glob "'../projects/*.*'";

my @files = <../essays/*>;
foreach $file (@files) {
	print FILE $essay =~ s/<//r;
}