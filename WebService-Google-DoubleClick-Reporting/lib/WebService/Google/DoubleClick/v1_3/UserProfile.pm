package WebService::Google::DoubleClick::Reporting::v1_3::UserProfile;

use Moose;
use namespace::autoclean;

has 'id'               => ( is => 'ro', isa => 'Num', required => 1 ); 
has 'account_id'       => ( is => 'ro', isa => 'Num', required => 1 );
has 'account_name'     => ( is => 'ro', isa => 'Str', required => 1 );
has 'etag'             => ( is => 'ro', isa => 'Str', required => 1 );
has 'kind'             => ( is => 'ro', isa => 'Str', required => 1, default => "dfareporting#userProfile");
has 'sub_account_id'   => ( is => 'ro', isa => 'Num', required => 0 );
has 'sub_account_name' => ( is => 'ro', isa => 'Str', required => 0 );
has 'user_name'        => ( is => 'ro', isa => 'Str', required => 1 );

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME
    
WebService::Google::DoubleClick::Reporting::v1.3::UserProfile
A user profile object for the Google DoubleClick Service

=head1 SYNOPSYS

This module represents a user profile as defined in the REST API for the Google
DoubleClick API.

    use WebService::Google::DoubleClick::Reporting::v1.3::UserProfile;

    # Not terribly useful since it won't represent a useful user profile at
    # Google, but it is useful for the underlying adapter.
    my $user_profile =
        WebService::Google::DoubleClick::Reporting::v1.3::UserProfile->new( {
            ...
        } );

    # Much more useful
    my $user_profile =
        WebService::Google::DoubleClick::Reporting::v1.3::UserProfile->retireve( {
            id => <your profile ID>
        } );

    # this is userName in the API.  
    say $user_profile->user_name();

=head1 DESCRIPTION

WebService::Google::DoubleClick::Reporting::v1.3::UserProfile allows you to create
and retrieve a google user profile.  You probably want to use the retrieve method
since that will retrieve the user profile from the API.  The new method is used by
the API adapter.

=head1 ATTRIBUTES (All are read only)

=head2 id

The unique ID of the user profile. (profileId in the API)
    
=head2 account_id

The account ID this profile belongs to. (accountId in the API)
    
=head2 account_name

The account name this profile belongs to. (accountName in the API)

=head2 etag

The eTag of this response for caching purposes. (etag in the API)

=head2 kind

Kind of resource this is, in this case dfareporting#userProfile. (kind in the API)
    
=head2 sub_account_id

The sub account ID this profile belongs to if applicable. (subAccountId in the API)

=head2 sub_account_name

The sub account name this profile belongs to if applicable. (subAccountName in the API)

=head2 user_name

The user name associated with the profile.  (userName in the API)

=head1 METHODS

=head2 new()

=head2 retrieve()

Retrieves the user profile instance using the API and returns a UserProfile instance.
Throws the following exceptions:

=over 4

=item * AuthorizationDenied

=item * AuthenticationDenied

=item * RecordNotFound

=back

=head1 BUGS

None discovered yet.
    
=cut
