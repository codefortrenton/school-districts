#!/usr/bin/perl
use strict;
use warnings;

# script to convert a polygon file to an OSM file for
# editing in JOSM etc.
# the polygon file is expected to have the structure
# 
# line 1:     symbolic name
# line 2:     id of first polygon
# lines 3-n:  coordinates of first polygon, each line beginning with 
#             whitespace, then having lon and lat of the point in scientific notation
# line n+1:   END
# the lines 2 to n+1 may then be repeated for further polygons, and the last line must be 
# END (so that the file ends with 2 lines having "END").
#
# written by Frederik Ramm <frederik@remote.org>, public domain.
my $nodecnt = -1;
my $waycnt = -1;

my $nodes;
my $ways;

my %nodehash;

sub process_poly
{
    my $poly_file =shift;
    my $poly_id  = <IN> || 0;
    #chomp($poly_id);
    #warn $poly_id;
    my $startnode = $nodecnt;
    #return 0 if ($poly_id =~ /^END/); # end of file

    $ways .= sprintf("<way id='%d'>\n<tag k='admin_level' v='8' />\n<tag k='border_type' v='city' />\n<tag k='boundary' v='administrative' />\n<tag k='is_in' v='USA, New Jersey' />\n<tag k='is_in:country' v='USA' />\n<tag k='is_in:country_code' v='US' />\n<tag k='is_in:county' v='Mercer, NJ' />\n<tag k='is_in:iso_3166_2' v='US:NJ' />\n<tag k='is_in:state' v='New Jersey' />\n<tag k='is_in:state_code' v='NJ' />\n<tag k='name' v='%s' />\n<tag k='place' v='city' />\n",
        $waycnt--, $poly_file);

    while(my $line = <IN>)
    {

	chomp $line;
	
	#warn $line;
        if ($line =~ /^END/) { # end of poly
	    $ways .= "  </way>\n";
	    return 1;	    
	}
        $line =~ /^\s*(\S+)\s+(\S+)/ or die("cannot parse input line: $line");
        my ($x, $y) = ($1, $2);
        my $existingnode = $nodehash{"$x|$y"};
        if (defined($existingnode))
        {
            $ways .= sprintf("    <nd ref='%d' />\n", $existingnode);
        }
        else
        {
            $nodehash{"$x|$y"} = $nodecnt;
            $ways .= sprintf("    <nd ref='%d' />\n", $nodecnt);
            $nodes .= sprintf("  <node id='%d' lat='%f' lon='%f' />\n", $nodecnt--, $y, $x);
        }
    }
    $ways .= "</way>\n";
    return 0;	   
}


print "<osm generator='osm2poly.pl' version='0.6'>\n";

# first line
# (employ workaround for polygon files without initial text line)
while(@ARGV) {
my $filename = shift @ARGV;
open IN, $filename;

my $poly_file = <IN>; # skip line
$poly_file= $filename;
chomp($poly_file);
#warn $poly_file;
$poly_file =~ s/\/home\/mdupont\/experiments\/cities\/united_states\/new-jersey\///g;
$poly_file =~ s/_new-jersey.poly//g;
$poly_file =~ s/\-/ /g;

while(process_poly($poly_file)) {  };

print $nodes;
print $ways;


$nodes="";
$ways="";


close IN;
}
print "</osm>\n";
