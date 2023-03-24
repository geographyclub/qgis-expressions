# qgis-expressions
DUMP

## Symbology

Stack points by height (order by dem ascending)

`translate(make_point(round(x($geometry),1),round(y($geometry),1)),-clamp(0,"dem"*0.0002,0.5),clamp(0,"dem"*0.0002,0.5))`

Snap points by rounding

`make_point(round($x/100)*100,round($y/100)*100)`

Calculate percent from top

`round(((((y(@map_extent_center))+(@map_extent_height/2)-$y))/(@map_extent_height))*100) || '%'`

???

`make_line(centroid($geometry),project(centroid($geometry),$length,radians((atan((xat(-1)-xat(0))/(yat(-1)-yat(0)))) * 180/3.14159 + (180 *(((yat(-1)-yat(0)) < 0) + (((xat(-1)-xat(0)) < 0 AND (yat(-1) - yat(0)) >0)*2))))))`

Set color ramps

`ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1))`

`set_color_part(ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1)),'alpha',@myalpha1)`

```
CASE WHEN DN >= 0 THEN ramp_color(@mycolorramp1,scale_linear("DN",@mymin1,@mymax1,0,1))
  ELSE ramp_color(@mycolorramp2,scale_linear("DN",@mymin2,@mymax2,0,1))
END
```

Odd & even

`floor( $id / number_of_columns ) % 2 = 1`

`floor( $id / number_of_columns ) % 2 = 0`

Query angle

`(atan((xat(-1)-xat(0))/(yat(-1)-yat(0)))) * 180/3.14159 + (180 *(((yat(-1)-yat(0)) < 0) + (((xat(-1)-xat(0)) < 0 AND (yat(-1) - yat(0)) >0)*2)))`

Restrict angle

```
CASE WHEN ("line_direction" > 0 AND "line_direction" < 45) OR ("line_direction" > 135 AND "line_direction" < 225) OR ("line_direction" > 315) THEN 0
  WHEN ("line_direction" >= 45 AND "line_direction" <= 135) OR ("line_direction" >= 225 AND "line_direction" <= 315) THEN 315
  ELSE 0
END
```

Get coordinates from top-left (0,0)

`round(((((x(@map_extent_center))-(@map_extent_width/2)-$x))/(-@map_extent_width))*100) || '|' ||`

`round(((((y(@map_extent_center))+(@map_extent_height/2)-$y))/(@map_extent_height))*100) || '|'`

Select from map window

`(@map_extent_width/3) > distance(centroid($geometry),@map_extent_center)`

`intersects($geometry,buffer(@map_extent_center,0.5))`

```
x($geometry) > (x(@map_extent_center) - (@map_extent_width/4)) AND
x($geometry) < (x(@map_extent_center) + (@map_extent_width/4)) AND
y($geometry) > (y(@map_extent_center) - (@map_extent_height/4)) AND
y($geometry) < (y(@map_extent_center) + (@map_extent_height/4))
```

```
x($geometry) > (x(@map_extent_center) + (@map_extent_width*(-0.2))) AND
x($geometry) < (x(@map_extent_center) + (@map_extent_width*(-0.1))) AND
y($geometry) > (y(@map_extent_center) + (@map_extent_height*(-0.3))) AND
y($geometry) < (y(@map_extent_center) + (@map_extent_height*(0.3)))
```

```
x(transform($geometry, 'EPSG:4326', @map_crs)) > (x(@map_extent_center) - (@map_extent_width/4)) AND
x(transform($geometry, 'EPSG:4326', @map_crs)) < (x(@map_extent_center) + (@map_extent_width/4)) AND
y(transform($geometry, 'EPSG:4326', @map_crs)) > (y(@map_extent_center) - (@map_extent_height/4)) AND
y(transform($geometry, 'EPSG:4326', @map_crs)) < (y(@map_extent_center) + (@map_extent_height/4))
```

Rotate

`(((x($geometry) - x(@map_extent_center))*cos(radians(@mydegrees))) - ((y($geometry) - y(@map_extent_center))*sin(radians(@mydegrees)))) + x(@map_extent_center)
(((x($geometry) - x(@map_extent_center))*sin(radians(@mydegrees))) + ((y($geometry) - y(@map_extent_center))*cos(radians(@mydegrees)))) + y(@map_extent_center)`

Extrude

`extrude(boundary($geometry),0,0.2)`

Align points

`make_point(($x-($x-(x(@map_extent_center)-(@map_extent_width/3)))),$y)`

`make_point(($x-($x-(x(@map_extent_center)-(@map_extent_width/3)))),round($y,1))`

Intersection with make_polygon

`intersection($geometry, make_polygon(geom_from_wkt('LINESTRING(-180,-90 -180,90 180,90 180,-90)')))`

Make line

`make_line($geometry,make_point((x(@map_extent_center)-(@map_extent_width/4)),(y(@map_extent_center)-(@map_extent_height/4))))`

`make_line($geometry,geometry(get_feature('jp_snap_labels','geonameid',
attribute($currentfeature,'geonameid'))))`

`make_line(centroid($geometry),geometry(get_feature('Citybike','STATION','Millennium Tower' )))`

`make_line(centroid($geometry),make_point((x(@map_extent_center)+(@map_extent_width/2)),y(@map_extent_center)))`

```
CASE WHEN $x > x(@map_extent_center) THEN make_line($geometry,make_point((x(@map_extent_center)+(@map_extent_width/3)),$y))
  ELSE make_line($geometry,make_point((x(@map_extent_center)-(@map_extent_width/3)),$y))
END
```

Projected line

`angle_at_vertex(transform(make_line($geometry,translate($geometry,10,0)),'EPSG:4326','EPSG:53029'),1)`

Point/Line from map center

`project($geometry,2,radians(angle_at_vertex(make_line(@map_extent_center,$geometry),0)))`

`make_line($geometry,project($geometry,2,radians(angle_at_vertex(make_line(@map_extent_center,$geometry),0))))
closest_point(exterior_ring(buffer(@map_extent_center,2)),$geometry)`

`make_line(closest_point(exterior_ring(buffer(transform(@map_extent_center,'EPSG:4326','EPSG:53029'),2)),$geometry),$geometry)
closest_point(boundary(buffer(@map_extent_center,(@map_extent_width/2.5))),$geometry)`

Point/line from geometry

`line_interpolate_point((make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry))),(length(make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry)))/2))`

`make_line($geometry,line_interpolate_point((make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry))),(length(make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry)))/2)))`

Line from wind_dir

`make_line($geometry,project($geometry,("wind_sp"*0.1),(radians("wind_dir"))))`

Geometry-based offset

`scale_linear(y($geometry),(y(@map_extent_center)-(@map_extent_width/2)),(y(@map_extent_center)+(@map_extent_height/2)),0,1000)`

Majority filter

`"SUBREGION" = majority("SUBREGION",filter:=intersects($geometry,@map_extent))`

One-to-many relation (project properties > relations)

`relation_aggregate('contour_gbif','min',"vname_en")`

`relation_aggregate('contour_gbif','concatenate',"vname_en",',')`

Intersects

```
CASE WHEN intersects($geometry,geometry(get_feature('ne_10m_land','featurecla','Land'))) THEN 1
  ELSE 0
END
```

## Labels

Delete english characters

`regexp_replace("name", '[0-9A-Za-z;.,\\?\\/\\-\\(\\)ºçàèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸěǎāīū]' , '' )`

`regexp_replace("name", '[0-9A-Za-z;\\?\\/\\-\\(\\)]' , '' )`

Translate chinese featureclass

`replace(replace(replace(replace(replace(replace(replace(replace(replace("featureclass",'A','境'),'H','水'),'L','区'),'P','位'),'R','路'),'S','点'),'T','山'),'U','海'),'V','卉')`

Get sentence

`substr("field_4",strpos("field_4",'\\.')+2,strpos(substr("field_4",strpos("field_4",'\\.')+2,200),'\\.'))`

Get nth word

`regexp_substr("point_tags", '^(?:\\S+\\s){0}(\\S+)')`

`regexp_substr("ECO_NAME",'([^( ]*)$')`

Add space/newline between characters

`regexp_replace("Cls",'([A-Z])','\\1 ')`

`regexp_replace("zh",'(.)','\\1\n')`

Extract osm tags

`replace(regexp_substr("other_tags",'(height"=>"[0-9]+\\.[0-9]+)'),'height"=>"','')`

`replace(regexp_substr("other_tags",'(building:levels"=>"[0-9]+)'),'building:levels"=>"','')`

`replace(regexp_substr("other_tags",'(addr:housenumber"=>"[1-9]{1,3})'),'addr:housenumber"=>"','')`

Rotate labels

```
CASE WHEN "aspect" >= 0 AND "aspect" < 90 THEN scale_linear("aspect",0,90,350,360)
  WHEN "aspect" >= 90 AND "aspect" < 180 THEN scale_linear("aspect",90,180,0,10)
  WHEN "aspect" >= 180 AND "aspect" < 270 THEN scale_linear("aspect",180,270,170,180)
  WHEN "aspect" >= 270 AND "aspect" < 360 THEN scale_linear("aspect",270,360,180,190)
  ELSE 0
END
```

Ascii symbols from aspect

```
CASE WHEN "aspect_mean" >= 0 AND "aspect_mean" < 22.5 THEN '→'
  WHEN "aspect_mean" >= 22.5 AND "aspect_mean" < 67.5 THEN '\\'
  WHEN "aspect_mean" >= 67.5 AND "aspect_mean" < 112.5 THEN '|'
  WHEN "aspect_mean" >= 112.5 AND "aspect_mean" < 157.5 THEN '/'
  WHEN "aspect_mean" >= 157.5 AND "aspect_mean" < 202.5 THEN '—'
  WHEN "aspect_mean" >= 202.5 AND "aspect_mean" < 247.5 THEN '\\'
  WHEN "aspect_mean" >= 247.5 AND "aspect_mean" < 292.5 THEN '|'
  WHEN "aspect_mean" >= 292.5 AND "aspect_mean" < 337.5 THEN '/'
  ELSE '—'
END
```

```
CASE WHEN "aspectmean" >= 0 AND "aspectmean" < 90 THEN '\\'
  WHEN "aspectmean" >= 90 AND "aspectmean" < 180 THEN '/'
  WHEN "aspectmean" >= 180 AND "aspectmean" < 270 THEN '\\'
  ELSE '/'
END
```

Project labels

`azimuth(transform($geometry,'EPSG:4326','+proj=vandg +lon_0=0 +x_0=0 +y_0=0 +R_A +a=6371000 +b=6371000 +units=m no_defs'), translate(transform($geometry,'EPSG:4326','+proj=vandg +lon_0=0 +x_0=0 +y_0=0 +R_A +a=6371000 +b=6371000 +units=m no_defs'),0,1))`

Label direction from point

`line_interpolate_angle(make_line(make_point(x($geometry),y($geometry)),make_point((x(@map_extent_center)+(@map_extent_width/2)),y(@map_extent_center))),10)+270`

`angle_at_vertex(intersection(@map_extent,smooth($geometry,1)),(num_points(intersection(@map_extent,smooth($geometry,1)))/2))-90`

Arrange labels around map

```
"degrees" LIKE '%0' AND "direction" IN ('N','S') AND
(x($geometry) > (x(@map_extent_center) + (@map_extent_width/2.5)) OR x($geometry) < (x(@map_extent_center) - (@map_extent_width/2.5))) AND
(y($geometry) > (y(@map_extent_center) - (@map_extent_height/2.5)) AND y($geometry) < (y(@map_extent_center) + (@map_extent_height/2.5)))
```

Arrange labels

`scale_linear(y($geometry),(y(@map_extent_center)-(@map_extent_height)),(y(@map_extent_center)+(@map_extent_height)),(y(@map_extent_center)-(@map_extent_height/1)),(y(@map_extent_center)+(@map_extent_height/3)))`

Aggregate

`aggregate(layer:='ne_10m_airports_snap1',aggregate:='concatenate',expression:="abbrev",filter:="scalerank" IS NOT NULL,concatenator:='\n')`

`aggregate(layer:='places_3857',aggregate:='concatenate',expression:="name",filter:=intersects($geometry,buffer(@map_extent_center,100000)),concatenator:='\n')`

`aggregate(layer:='wwf_terr_ecos_3857',aggregate:='concatenate_unique',expression:="ECO_SYM" || ' ' || "ECO_NAME",filter:=intersects($geometry,@map_extent),concatenator:='\n')`

`aggregate(layer:='places_3857',aggregate:='concatenate',expression:="name",filter:="iso_a2" = attribute(@atlas_feature,'iso_a2'),concatenator:='\n')`

`array_find(array_agg("fid", group_by:="ADM0_A3", order_by:="POP_MAX"), "fid")`

`intersects($geometry,aggregate('ne_50m_admin_0_map_subunits','collect',$geometry,intersects($geometry,@map_extent_center)))`

Get attribute matching name

`attribute(get_feature('puma2020_nyc','name',"name"), 'pop2020')`

Enumerate features in extent

`(array_find(array_distinct(array_agg(expression:="ECO_ID", filter:=intersects_bbox($geometry,@map_extent), order_by:="ECO_NAME")),"ECO_ID") + 1)`

`aggregate(layer:='wwf_terr_ecos_3857',aggregate:='concatenate_unique',expression:='⬜ ' || (array_find(array_agg(expression:="ECO_NAME", filter:=intersects($geometry,@map_extent) AND $area >= '2500000000'), "ECO_NAME") + 1) || ' ' || "ECO_NAME",filter:=intersects($geometry,@map_extent) AND $area >= '2500000000',concatenator:='\n',order_by:="ECO_NAME")`

Order angles from center (for distributing labels evenly in a circle)

`(array_find(array_distinct(array_agg(expression:="id", filter:=intersects_bbox($geometry,@map_extent), order_by:=azimuth(@map_extent_center,(centroid($geometry))))),"id") + 1)`

`make_line(centroid($geometry),project(centroid($geometry),0.1,radians(scale_linear((array_find(array_distinct(array_agg(expression:="id", filter:=intersects_bbox($geometry,@map_extent), order_by:=azimuth(@map_extent_center,(centroid($geometry))))),"id") + 1),1,30,0,360))))`

Get attribute of geometry expression

`"SUBREGION" = array_to_string(array_agg(expression:="SUBREGION", filter:=intersects($geometry,@map_extent_center)))`

Format large numbers

```
wordwrap("name",15) || '\n' ||
CASE WHEN length("pop_max") = 4 THEN left("pop_max",1) || 'k'
  WHEN length("pop_max") = 5 THEN left("pop_max",2) || 'k'
  WHEN length("pop_max") = 6 THEN left("pop_max",3) || 'k'
  WHEN length("pop_max") = 7 THEN left("pop_max",1) || 'm'
  WHEN length("pop_max") = 8 THEN left("pop_max",2) || 'm'
  WHEN length("pop_max") = 9 THEN left("pop_max",3) || 'm'
  ELSE "pop_max"
END
```

Aggregate legend

```
trim(replace(wordwrap(replace(replace(aggregate('places',aggregate:='concatenate',expression:="name" || ' ' || round("longitude") || '°,' || round("latitude") || '°@',filter:="scalerank" IN (0,1,2,3,4,5) AND
(@map_extent_width/3) > distance(centroid($geometry),@map_extent_center),order_by:="name"
),' ','_'),'@',' '),50),'_',' '))
```

Get attribute

`attribute(get_feature('admin1_clean',$geometry,closest_point(geometry(get_feature('admin1_clean','enwiki_title',IS NOT NULL)),$geometry)),'enwiki_title')`

`aggregate(layer:='ne_50m_admin_0_countries',aggregate:='concatenate',expression:="CONTINENT",filter:=intersects($geometry,@map_extent_center),concatenator:=' ') || '\n' || wordwrap("_ECO_NAME",20) || '\n1:' || format_number(@map_scale,0)`

Label around geometry

`difference(@map_extent,$geometry)`

`intersection($geometry,minimal_circle(@atlas_geometry))`

Label along map extent

`make_line(make_point((x(@map_extent)-(@map_extent_width/3)),y_max(@map_extent)),make_point((x(@map_extent)-(@map_extent_width/3)),y_min(@map_extent)))`

## Print layout

Variables

`"_CONTINENT" || '_' || "adm0name" || '_' || "adm1name" || '_' || "name" || '_' || round(map_get(item_variables('Map 1'),'map_extent_width') / 3)`

`replace("_CONTINENT" || '_x_' || round("longitude") || '_y_' || round("latitude") || '_width_' || round(map_get(item_variables('Map 1'),'map_extent_width')) || '_height_' || round(map_get(item_variables('Map 1'),'map_extent_height')),' ','_')`

`replace(replace("_CONTINENT" || '@' || "biome" || '@' || "adm0name" || '_x_' || round("longitude",2) || '_y_' || round("latitude",2) || '_width_' || round(map_get(item_variables('Map 1'),'map_extent_width'),2) || '_height_' || round(map_get(item_variables('Map 1'),'map_extent_height'),2),' ','_'),'/','_')`

Scale with map id

`1:[% format_number(map_get(item_variables( 'map1' ), 'map_scale'),0) %]`

Regex replace

`regexp_replace(replace(@atlas_pagename, '.', ''), ' +', '_')`

HTML labels

`<p style="font-family:'Montserrat Thin';letter-spacing:10">WORLD MAP</p>`

Layout projection

```
CASE WHEN attribute(@atlas_feature,'CONTINENT') IN ('Africa') THEN 'PROJ:+proj=ortho +lat_0="7" +lon_0="18" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('Asia','Oceania') THEN 'PROJ:+proj=ortho +lat_0="20" +lon_0="100" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('Europe') THEN 'PROJ:+proj=ortho +lat_0="30" +lon_0="30" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('North America') THEN 'PROJ:+proj=ortho +lat_0="68" +lon_0="-84" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('South America') THEN 'PROJ:+proj=ortho +lat_0="-18" +lon_0="-61" +ellps=sphere'
END
```

Layout projection to atlas_feature

`'PROJ:+proj=ortho +lat_0="[% attribute(@atlas_feature,LATITUDE) %]" +lon_0="[% attribute(@atlas_feature,LONGITUDE) %]" +ellps=sphere'`

## Extra
WWF codes

```
CASE WHEN "REALM" = 'AA' THEN 'Australasia'
  WHEN "REALM" = 'AN' THEN 'Antarctic'
  WHEN "REALM" = 'AT' THEN 'Afrotropic'
  WHEN "REALM" = 'IM' THEN 'Indomalaya'
  WHEN "REALM" = 'NA' THEN 'Nearctic'
  WHEN "REALM" = 'NT' THEN 'Neotropic'
  WHEN "REALM" = 'OC' THEN 'Oceania'
  WHEN "REALM" = 'PA' THEN 'Palearctic'
  ELSE ''
END
```

```
CASE WHEN "BIOME" = 1 THEN 'Tropical & Subtropical Moist Broadleaf Forests'
  WHEN "BIOME" = 2 THEN 'Tropical & Subtropical Dry Broadleaf Forests'
  WHEN "BIOME" = 3 THEN 'Tropical & Subtropical Coniferous Forests'
  WHEN "BIOME" = 4 THEN 'Temperate Broadleaf & Mixed Forests'
  WHEN "BIOME" = 5 THEN 'Temperate Conifer Forests'
  WHEN "BIOME" = 6 THEN 'Boreal Forests/Taiga'
  WHEN "BIOME" = 7 THEN 'Tropical & Subtropical Grasslands, Savannas & Shrublands'
  WHEN "BIOME" = 8 THEN 'Temperate Grasslands, Savannas & Shrublands'
  WHEN "BIOME" = 9 THEN 'Flooded Grasslands & Savannas'
  WHEN "BIOME" = 10 THEN 'Montane Grasslands & Shrublands'
  WHEN "BIOME" = 11 THEN 'Tundra'
  WHEN "BIOME" = 12 THEN 'Mediterranean Forests, Woodlands & Scrub'
  WHEN "BIOME" = 13 THEN 'Deserts & Xeric Shrublands'
  WHEN "BIOME" = 14 THEN 'Mangroves'
  ELSE ''
END
```

Lithology codes

```
CASE WHEN "xx" = 'ad' THEN 'Alluvial Deposits'
  WHEN "xx" = 'ds' THEN 'Dune Sands'
  WHEN "xx" = 'ev' THEN 'Evaporites'
  WHEN "xx" = 'lo' THEN 'Loess'
  WHEN "xx" = 'su' THEN 'Unconsolidated Sediments'
  WHEN "xx" = 'sc' THEN 'Carbonate Sedimentary Rocks'
  WHEN "xx" = 'sm' THEN 'Mixed Sedimentary Rocks'
  WHEN "xx" = 'ss' THEN 'Siliciclastic Sedimentary Rocks'
  WHEN "xx" = 'mt' THEN 'Metamorphic Rocks'
  WHEN "xx" = 'pa' THEN 'Acid Plutonic Rocks'
  WHEN "xx" = 'pi' THEN 'Intermediate Plutonic Rocks'
  WHEN "xx" = 'pb' THEN 'Basic Plutonic Rocks'
  WHEN "xx" = 'va' THEN 'Acid Volcanic Rocks'
  WHEN "xx" = 'vi' THEN 'Intermediate Volcanic Rocks'
  WHEN "xx" = 'vb' THEN 'Basic Volcanic Rocks'
  WHEN "xx" = 'py' THEN 'Pyroclastics'
  WHEN "xx" = 'wb' THEN 'Water Bodies'
  WHEN "xx" = 'ig' THEN 'Ice and Glaciers'
  WHEN "xx" = 'nd' THEN 'No Data'
  ELSE ''
END
```

