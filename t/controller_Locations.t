use strict;
use warnings;
use Test::More;


use Catalyst::Test 'ToxHer';
use ToxHer::Controller::Locations;

ok( request('/locations')->is_success, 'Request should succeed' );
done_testing();
