package DBIx::Class::TimeStamp::WithTimeZone;

use 5.010001;
use strict;
use warnings;

use base qw(DBIx::Class::TimeStamp);

use DateTime;

our $VERSION = '0.02';

sub get_timestamp {
    return DateTime->now->set_time_zone($ENV{TZ}||$ENV{TIMEZONE}||'GMT');
}

1;
