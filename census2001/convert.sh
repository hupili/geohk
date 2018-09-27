#!/bin/bash


ogr2ogr -s_srs EPSG:2326 -t_srs EPSG:4326 -f geoJSON tmp.json dc_land.shp
cat tmp.json | python3 fix-chars.py > dc_land.geo.json
rm -f tmp.json

ogr2ogr -s_srs EPSG:2326 -t_srs EPSG:4326 -f geoJSON tmp.json dcca_land.shp
cat tmp.json | python3 fix-chars.py > dcca_land.geo.json
rm -f tmp.json

mapshaper dc_land.geo.json -simplify dp 5% -o format=geojson -o precision=0.001 dc_land.lowres.geo.json
mapshaper dcca_land.geo.json -simplify dp 5% -o format=geojson -o precision=0.001 dcca_land.lowres.geo.json
