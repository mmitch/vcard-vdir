use strict;
use warnings;
package vCard::vDir;
# ABSTRACT: convert between single file and multi file (vDir) vCard address books 

use Moo;

sub write {
    my ($self) = shift;
    my ($dir, $ab) = (@_);

    my $file = 1;
    for my $vcard ( @{ $ab->vcards }) {
	my $filename = sprintf '%s/%d.vcf', $dir, $file; # TODO: use Path::Tiny; detect existing files; add overwrite mode
	$vcard->as_file( $filename ) or die "can't write vCard to `$filename': $!";
    }
}

1;


