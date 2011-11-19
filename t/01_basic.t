use strict;
use Test::More;
use FormValidator::Lite;

FormValidator::Lite->load_constraints(qw/Mouse/);

{
    package T::Mock::Request;
    sub new {
        my ($class, $args) = @_;
        $args ||= {};
        return bless { %$args }, $class;
    }
    
    sub set_param {
        my ($self, $name, $param) = @_;
        $self->{$name} = $param;
    }
    
    sub param {
        my ($self, $name) = @_;
        return $self->{$name};
    }
}

my $req = T::Mock::Request->new;

subtest 'Int' => sub{
    $req->set_param( 'foo' => 1 );
    my $validator = FormValidator::Lite->new($req);
    $validator->check(
        foo => ['Int']
    );
    ok(!$validator->has_error);
};

done_testing();