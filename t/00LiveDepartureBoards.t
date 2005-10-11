#!/usr/bin/perl

use strict;
use warnings;

use lib './lib/';

use Test::More tests=>4;

BEGIN { use_ok( 'WWW::LiveDepartureBoards' )}

my $farringdon = WWW::LiveDepartureBoards->new({station_code => 'ZFD'});


my @details1 = $farringdon->departures();
ok(scalar(@details1));

my @details2 = $farringdon->departures(['Wimbledon','Sutton (Surrey)']);
ok(scalar(@details2));

ok(scalar(@details1) > scalar(@details2))
