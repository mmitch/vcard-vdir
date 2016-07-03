use strict;
use warnings;

use Test::More tests => 1;
use Test::Directory;

use vCard::AddressBook;
use vCard::vDir;

my $VCARD1 = create_vcard( 'one' );

subtest 'export single vCard' => sub {
    # given
    my $dir = Test::Directory->new();

    my $given_ab = vCard::AddressBook->new;
    add_vcard( $given_ab, $VCARD1 );
    
    my $vdir = vCard::vDir->new;

    # when
    $vdir->write( $dir, $given_ab );

    # then
    my @files = glob "'$dir'/*";
    is( scalar @files, 1, 'file count in target directory' );

    my $written_ab = vCard::AddressBook->new()->load_file( "$dir/$files[0]" );
    is_deeply( $written_ab, $given_ab, 'written vcard' );
};
    

### helper methods

sub create_vcard {
    my ($name) = (@_);

    my $vcard = vCard->new;
    $vcard->full_name( $name );
    return $vcard;
}

sub add_vcard {
    my ($ab, $vcard) = (@_);

    push @{ $ab->vcards }, $vcard;
}

