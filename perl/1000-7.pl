use strict;
use warnings;
use Time::HiRes qw(usleep);

my $delay = 50_000;
my $i = 0;
my $n = 1000;

while ($i < 143) {
	usleep($delay);
	$i++;

	if ($n <= 6) {
		print "Я гуль!\n";
		exit;
	}

	printf "%d - %d = %d\n", $n, 7, $n - 7;
	$n -= 7;
}