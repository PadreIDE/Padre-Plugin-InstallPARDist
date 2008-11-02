use strict;
use warnings;

use Test::More;
my $tests;

plan tests => $tests;

use Padre::Plugin::InstallPARDist;
use Padre;
diag "Padre::Plugin::InstallPARDist: $Padre::Plugin::InstallPARDist::VERSION";
diag "Padre: $Padre::VERSION";
diag "Wx Version: $Wx::VERSION " . Wx::wxVERSION_STRING();
 
{
    my @menu = Padre::Plugin::InstallPARDist->menu;
    is @menu, 1, 'one menu item';
    is $menu[0][0], 'Install PAR dist.', 'menu item';
    BEGIN { $tests += 2; }
}
