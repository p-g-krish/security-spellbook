package Spellbook::Helper::Nmap_Parser {
    use strict;
    use warnings;
    use XML::Simple;

    sub new {
        my ($self, $file) = @_;
        my @results = ();

        if ($file) {
            my $xml  = XML::Simple -> new();
            my $data = $xml -> XMLin($file);
            # my $host = $data -> {host} -> {address} -> {addr};

            
            # foreach my $content (@{$data -> {host} -> {ports} -> {port}}) {
            #     my $state = $content -> {state} -> {state};

            #     if (($state eq "open") || ($state eq "filtered")) {
            #         my $port     = $content -> {portid};
            #         my $protocol = $content -> {protocol};
            #         my $service  = $content -> {service} -> {name};

            #         push @results, "$host -> [$protocol] | [$state]-> $port \t | $service\n";
            #     }
            # };
        }

        return @results;
    }
}

1;