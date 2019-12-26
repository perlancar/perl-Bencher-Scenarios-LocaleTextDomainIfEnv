package Bencher::Scenario::LocaleTextDomainIfEnv::Startup;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of Locale::TextDomain::IfEnv',

    modules => {
        # minimum versions
        #'Getopt::Long::EvenLess' => {version=>'0.10'},
    },

    module_startup => 1,

    participants => [
        {module=>'Locale::TextDomain::IfEnv'},
        {module=>'Locale::TextDomain::UTF8::IfEnv'},
        {module=>'Locale::TextDomain::UTF8'},
        {module=>'Locale::TextDomain'},

        {module=>'Locale::Messages'},
    ],
};

1;
# ABSTRACT:
