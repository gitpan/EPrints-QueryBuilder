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
use EPrints::QueryBuilder;
$| = 1;

my $tmpobj=new EPrints::QueryBuilder;
my @tmpvar;
my @tmpvar2=$tmpobj->getTokenizedString("This is a +\"query FOO \" +NOT ASDF -string");

# Print the resulting tokens
print join(" ",@tmpvar2)."\n";
# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

