package Bencher::Scenario::LocaleTextDomainIfEnv::__x;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark __x()',

    modules => {
        # minimum versions
        #'Getopt::Long::EvenLess' => {version=>'0.10'},
    },

    participants => [
        {code_template=>'package P1; use Locale::TextDomain;              __x("{foo} {bar}", foo=>1) for 1..1000'},
        {code_template=>'package P2; use Locale::TextDomain::IfEnv;       __x("{foo} {bar}", foo=>1) for 1..1000'},
        {code_template=>'package P3; use Locale::TextDomain::UTF8;        __x("{foo} {bar}", foo=>1) for 1..1000'},
        {code_template=>'package P4; use Locale::TextDomain::UTF8::IfEnv; __x("{foo} {bar}", foo=>1) for 1..1000'},
    ],
};

1;
# ABSTRACT:
