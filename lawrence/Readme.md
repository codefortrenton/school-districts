#Files
	*  Lawrence.pdf/copy_of_street_addresses_with_school_of_attendance_sorted.pdf input pdf files
	*  lawrence_schools.csv coded file of streets that is used as input, dervied from input pdf
	*  lawrence_schools.osm report on what houses are assigned to what school, this is converted to the shape file
	*  lawrence_township.osm osm files for the streets, used to look up missing streets
	*  shape/*.shp are the shape files per school
	*  street.pdf/street.txt streetmap from the city
	*  output/ contains outputs calculated 
	**    lawrence_disolve.shp contains all areas with a buffer of 0.001 appliend and dissolved 
	** all_way.osm contains all schools and information together
	** X_way.osm contains the output for that input
	** X/lines.shp contains the shapefile for the input
	** X_way.shp contains the merged data for that layer

# schools
* SL Slackwood Elementary
* BF Ben Franklin Elementary
* EP Eldridge Park Elementary
* LES Lawrenceville Elementary

Untagged:
* UN - unknown streets
* NO  - No school found
* NEW - new streets
 
 
# Paper streets
* BROOKWAY ROAD 
* DARBY AVENUE 
* FIRST STREET 
* GROVE STREET 
* JASPER AVENUE 
* LOCUST AVENUE 
* PARK AVENUE
* PARKWAY 
* PIEDMONT AVENUE 
* PROGRESS STREET 
* SHORT STREET 
* SOUTH STREET 
* TIOGA AVENUE
* VALLEY ROAD 
* VAN ARSDALE AVENUE

# Conversion
  shawnee-county-osm-landuse/convert3.sh in https://github.com/h4ck3rm1k3/shawnee-county-osm-landuse