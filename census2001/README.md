## Source

CSD's 2001 census map files.

## Derived

`dc_land.shp` is given by CSD. `dcca_land.shp` derived from `dcca.shp` plus `coast.shp` using QGIS a few years ago but we can not reproduce it now in the current version of QGIS.

GeoJSONs are derived as:

```python
ogr2ogr -s_srs EPSG:2326 -t_srs EPSG:4326 -f geoJSON dc_land.geo.json dc_land.shp
ogr2ogr -s_srs EPSG:2326 -t_srs EPSG:4326 -f geoJSON dcca_land.geo.json dcca_land.shp
```

- EPSG:2326 is Hong Kong 1980 CRS. 
- EPSG:4326 is WGS 1984 CRS, which you can understand as the standard worldmap using normal longitude and latitude values and is centered at (0, 0).
