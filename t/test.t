use Test::Simple tests => 4;
use FB::Statify;

my $statify= new FB::Statify('username@domain.com','password',0);

ok(length($INC{"FB/Statify.pm"}) > 0, 'path ok');
ok(defined($statify) && ref $statify eq 'Statify', 'new() ok');
ok($statify->_username eq 'username@domain.com', '_username ok');
ok($statify->_password eq 'password', '_password ok');
ok($statify-> loggedIn == 0, 'flag ok');