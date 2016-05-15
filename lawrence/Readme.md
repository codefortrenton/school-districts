==Files==
	*  copy_of_street_addresses_with_school_of_attendance_sorted.pdf input pdf files
	*  lawrence_schools.csv coded file of streets that is used as input, dervied from input pdf
	*  lawrence_schools.osm report on what houses are assigned to what school, this is converted to the shape file
	*  lawrence_township.osm osm files for the streets, used to look up missing streets
	*  shape/*.shp are the shape files per school


==Details==
replace - with 0
ogr2ogr -nlt MULTIPOLYGON lawrence_shape  lawrence_schools.osm -skipfailure -overwrite
buffers with 0.001
union