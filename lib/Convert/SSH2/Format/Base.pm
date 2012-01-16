package Convert::SSH2::Format::Base;

use Moo;

=head1 NAME

Convert::SSH2::Format::Base - base class for SSH2 formatters

=head1 PURPOSE

Subclass this module to implement your own RSA SSH2 key reformatters.

=head1 ATTRIBUTES

=over

=item e

The public exponent component of an RSA public key.

=back

=cut

has 'e' => (
    is => 'ro',
    required => 1,
);

=over

=item n

The modulus component of an RSA public key.

=back

=cut

has 'n' => (
    is => 'ro',
    required => 1,
);

=head1 METHOD

=over

=item generate()

Using C<n> and C<e>, generate a representation in a specific format.

=back

=cut

sub generate {
    die "Subclass me.";
}

1;
