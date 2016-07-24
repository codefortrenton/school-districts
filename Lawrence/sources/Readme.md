
These svg files were imported with inkscape and then ungrouped twice, I cut out the columns and split into two files a and b.

The post processing was done as described here:
http://www.inkscapeforum.com/viewtopic.php?t=12843

    for x in *.svg; do echo $x; java -jar /usr/share/java/saxon.jar -o $x.txt $x text.xslt ; done


The next steps are to clean up the text and append them to the csv file in the parent directory.
