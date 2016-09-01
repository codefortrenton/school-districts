#mv new-jersey-latest.pbf new-jersey-latest.pbf.old
BASE=/home/mdupont/experiments/cities/united_states/new-jersey/

perl ./poly2osm.pl ${BASE}hightstown_new-jersey.poly  ${BASE}pennington_new-jersey.poly ${BASE}east-windsor-township_new-jersey.poly ${BASE}ewing-township_new-jersey.poly ${BASE}hamilton-township_new-jersey.poly  ${BASE}hopewell_new-jersey.poly ${BASE}hopewell-township_new-jersey.poly ${BASE}princeton-borough_new-jersey.poly  ${BASE}robbinsville-township_new-jersey.poly  ${BASE}lawrence-township_new-jersey.poly ${BASE}west-windsor-township_new-jersey.poly  ${BASE}trenton_new-jersey.poly  > mercer.osm
     
