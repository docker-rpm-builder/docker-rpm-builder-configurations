#!/usr/bin/perl
use RPM::Toolbox::Spec;
  
$spec = RPM::Toolbox::Spec->parse_file ($ARGV[0], %options);
  
@buildrequires = $spec->buildrequires;

print join(" ", @buildrequires)
