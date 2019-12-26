package Bencher::Scenario::LocaleTextDomainIfEnv::__;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark __()',

    modules => {
        # minimum versions
        #'Getopt::Long::EvenLess' => {version=>'0.10'},
    },

    participants => [
        {code_template=>'package P1; use Locale::TextDomain;        __("foo") for 1..1000'},
        {code_template=>'package P2; use Locale::TextDomain::IfEnv; __("foo") for 1..1000'},
    ],
};

1;
# ABSTRACT:
