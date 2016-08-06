#mv new-jersey-latest.osm.pbf new-jersey-latest.osm.pbf.old
if [ ! -f new-jersey-latest.osm.pbf ];
then
    wget http://download.geofabrik.de/north-america/us/new-jersey-latest.osm.pbf
fi

../osmosis/bin/osmosis --read-pbf new-jersey-latest.osm.pbf \
		       --tee 12 \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/hightstown_new-jersey.poly --write-xml Hightstown/hightstown_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/pennington_new-jersey.poly --write-xml Pennington/pennington_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/east-windsor-township_new-jersey.poly --write-xml EastWindsor/east-windsor-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/ewing-township_new-jersey.poly --write-xml Ewing/ewing-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/hamilton-township_new-jersey.poly --write-xml Hamilton/hamilton-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/hopewell_new-jersey.poly --write-xml HopewellValley/hopewell_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/hopewell-township_new-jersey.poly --write-xml HopewellValley/hopewell-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/princeton-borough_new-jersey.poly --write-xml Princeton/princeton-borough_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/robbinsville-township_new-jersey.poly --write-xml Robbinsville/robbinsville-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/lawrence-township_new-jersey.poly --write-xml Lawrence/lawrence-township_new-jersey.osm \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/west-windsor-township_new-jersey.poly --write-xml WestWindsor/west-windsor-township_new-jersey.osm  \
		       --bp file=/home/mdupont/experiments/cities/united_states/new-jersey/trenton_new-jersey.poly --write-xml Trenton/trenton_new-jersey.osm 
     
