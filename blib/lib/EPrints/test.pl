#!/usr/bin/perl

#
# test.pl
#
# Developed by Em Tonkin <cselt@users.sourceforge.net>
# Copyright (c) 2006 UNKNOWN Company
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2006-10-10 - created
#

# $Platon$

use strict;
use QueryBuilder;
$| = 1;

my $tmpobj=new QueryBuilder;
my @tagarr=("AND","OR","NOT","XOR");
$tmpobj->tags(@tagarr);
#$tmpobj->testme();
my @tmpvar;
my @tmpvar2=$tmpobj->getTokenizedString("This xor is a not not AND NOT +\"query FOO \" +NOT ASDF -string AND ");

# Print the resulting tokens
print join(" ",@tmpvar2)."\n";
# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

