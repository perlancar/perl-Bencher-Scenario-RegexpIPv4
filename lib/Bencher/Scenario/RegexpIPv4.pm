package Bencher::Scenario::RegexpIPv4;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark matching IPv4 address',
    participants => [
        {
            module=>'Regexp::IPv4',
            code_template => '<ip> =~ $Regexp::IPv4::IPv4_re'
        },
    ],
    datasets => [
        {args=>{ip=>'127.0.0.1'}},

        {args=>{ip=>'ff02::1'}},
        {args=>{ip=>'2001:cdba:0000:0000:0000:0000:3257:9652'}},
    ],
};

1;
# ABSTRACT:
