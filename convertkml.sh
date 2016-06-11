export IFS=$'\n'
for x in `find -name \*.kml`;
do 
    echo $x;
    OUTNAME=`basename $x .kml`
    OUTDIR=`dirname $x`
    /usr/bin/ogr2ogr -f GeoJSON -t_srs crs:84 "${OUTDIR}/${OUTNAME}.geojson" "$x"
done