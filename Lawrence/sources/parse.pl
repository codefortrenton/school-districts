#copy_of_street_addresses_with_school_of_attendance_sorted4b.svg.txt
use strict;
use warnings;
my @skip=(
    "STREET BOUNDARIES",
    "SCHOOL",
    "STREET NAME",
    "image",
    "Lawrence Township Public Schools",
    "Schools that use PRINCETON AVE",
    "CHECK WITH TRANSPORTATION BEFORE USING"
    );

my %skip;
for my $x (@skip) {
    $skip{$x}++;
}

my @schools=(
    "BF",
    "LES",
    "EP",
    "SL",
    );
my %schools;
for my $x (@schools) {
    $schools{$x}++;
}

my @items;

while(<>){
    chomp;
    next if (/^\s*$/);
    my $item = "";

    if (/\s*(\S[\S\s]+)\s*$/) {
	next if $skip{$1};
	$item = $1;
    }

    if (exists($schools{$item})) {
	print join(',',@items,"\n");
	@items = ();
    }

    push @items, "'$item'";

}

print join(',',@items,"\n");
