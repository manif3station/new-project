#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use BuilderWebsite;

BuilderWebsite->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use BuilderWebsite;
use Plack::Builder;

builder {
    enable 'Deflater';
    BuilderWebsite->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use BuilderWebsite;
use BuilderWebsite_admin;

use Plack::Builder;

builder {
    mount '/'      => BuilderWebsite->to_app;
    mount '/admin'      => BuilderWebsite_admin->to_app;
}

=end comment

=cut

