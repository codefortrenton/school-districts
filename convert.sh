for x in `find -name \*.shp`;
do 
    echo $x;
    OUTNAME=`basename $x .shp`
    OUTDIR=`dirname $x`
    /usr/bin/ogr2ogr -f GeoJSON -t_srs crs:84 ${OUTDIR}/${OUTNAME}.geojson $x
done