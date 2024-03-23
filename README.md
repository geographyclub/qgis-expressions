# qgis-expressions

My most used QGIS expressions, plus style files and screenshots.

## TABLE OF CONTENTS

1. [Make](#make)
2. [Calculate](#calculate)
3. [Strings](#strings)
4. [Print layout](#print-layout)
5. [Datasets](#datasets)

## Make

Make snapped points by rounding  
```
make_point(round($x/100)*100,round($y/100)*100)
```

Make points aligned to map window  
```
# align vertically
make_point(($x-($x-(x(@map_extent_center)-(@map_extent_width/3)))),$y)

# align both ways
make_point(($x-($x-(x(@map_extent_center)-(@map_extent_width/3)))),round($y,1))
```

Make line  
```
make_line($geometry,geometry(get_feature('jp_snap_labels','geonameid',
attribute($currentfeature,'geonameid'))))

make_line(centroid($geometry),geometry(get_feature('Citybike','STATION','Millennium Tower' )))

make_line(centroid($geometry),make_point((x(@map_extent_center)+(@map_extent_width/2)),y(@map_extent_center)))

make_line(centroid($geometry),project(centroid($geometry),$length,radians((atan((xat(-1)-xat(0))/(yat(-1)-yat(0)))) * 180/3.14159 + (180 *(((yat(-1)-yat(0)) < 0) + (((xat(-1)-xat(0)) < 0 AND (yat(-1) - yat(0)) >0)*2))))))

make_line($geometry,project($geometry,("wind_sp"*0.1),(radians("wind_dir"))))

make_line($geometry,overlay_nearest('metars',$geometry))
```

Make conditional line  
```
CASE WHEN $x > x(@map_extent_center) THEN make_line($geometry,make_point((x(@map_extent_center)+(@map_extent_width/3)),$y))
  ELSE make_line($geometry,make_point((x(@map_extent_center)-(@map_extent_width/3)),$y))
END
```

Make line from map center  
```
make_line($geometry,project($geometry,2,radians(angle_at_vertex(make_line(@map_extent_center,$geometry),0))))
closest_point(exterior_ring(buffer(@map_extent_center,2)),$geometry)

make_line(closest_point(exterior_ring(buffer(transform(@map_extent_center,'EPSG:4326','EPSG:53029'),2)),$geometry),$geometry)
closest_point(boundary(buffer(@map_extent_center,(@map_extent_width/2.5))),$geometry)
```

Make line from geometry  
```
line_interpolate_point((make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry))),(length(make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry)))/2))

make_line($geometry,line_interpolate_point((make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry))),(length(make_line($geometry,closest_point((boundary(buffer(geometry(get_feature(@mylayer1,@myfield1,@myvalue1)),3))),$geometry)))/2)))
```

Make dynamic triangle  
```
make_triangle(translate(centroid($geometry),-2.5,0),translate(centroid($geometry),0,scale_linear("dem_mean",-1500,1500,0,5)),translate(centroid($geometry),2.5,0))
```

Make polygon  
```
# make polygon from bounds 
bounds(make_line(make_point(-180,-90),make_point(180,90)))

# make rectangle polygon from map extent
bounds(make_line(make_point(x(@map_extent_center) - (@map_extent_width/3), y(@map_extent_center) - (@map_extent_height/3)), make_point(x(@map_extent_center) + (@map_extent_width/3), y(@map_extent_center) + (@map_extent_height/3))))

# make circle polygon from map extent
make_circle(@map_extent_center,(@map_extent_height/3))

# make polygon from map extent in any projection 
make_polygon(make_line(
make_point(x(transform(make_point(x(@map_extent_center) - (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')),y(transform(make_point(x(@map_extent_center),y(@map_extent_center) - (@map_extent_height/3)),@map_crs,'epsg:4326'))),
make_point(x(transform(make_point(x(@map_extent_center) - (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')),y(transform(make_point(x(@map_extent_center),y(@map_extent_center) + (@map_extent_height/3)),@map_crs,'epsg:4326'))),
make_point(x(transform(make_point(x(@map_extent_center) + (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')),y(transform(make_point(x(@map_extent_center),y(@map_extent_center) + (@map_extent_height/3)),@map_crs,'epsg:4326'))),
make_point(x(transform(make_point(x(@map_extent_center) + (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')),y(transform(make_point(x(@map_extent_center),y(@map_extent_center) - (@map_extent_height/3)),@map_crs,'epsg:4326'))),
make_point(x(transform(make_point(x(@map_extent_center) - (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')),y(transform(make_point(x(@map_extent_center),y(@map_extent_center) - (@map_extent_height/3)),@map_crs,'epsg:4326')))
))
```

Intersection  
```
# extent in epsg:4326
intersection($geometry, bounds(make_line(make_point(-180,-90),make_point(180,90))))

# extent in epsg:3857
intersection($geometry, bounds(make_line(make_point(-20037508.34 -20048966.1),make_point(20037508.34 20048966.1)))

# frame rectangle from map extent
intersection($geometry, single_sided_buffer(boundary(@map_extent),(@map_extent_height/10)))

# frame circle from map extent
intersection($geometry, single_sided_buffer(boundary(buffer(@map_extent_center,(@map_extent_height/2))),-(@map_extent_height/10)))

# with feature geometry
intersection($geometry,aggregate('ne_110m_land','collect',$geometry))
```

Difference
```
# make polygon between geometries and map extent
difference(@map_extent, aggregate(layer:='city_admin_levels', aggregate:='collect', expression:=$geometry, filter:=within($geometry,@map_extent)))
```

Multibuffer
```
collect_geometries(array_foreach(generate_series(0.1,1,0.01),buffer($geometry,@element)))
```

Extrude
```
extrude(boundary($geometry),0,0.2)
```

Translate geometries
```
# one axis
translate($geometry,0,scale_linear("meters",0,7800,0,2))

# splitscreen
translate(intersection($geometry, @map_extent), (@map_extent_width/2), 0)

# isometric (use with tranform)
translate(smooth(simplify_vw($geometry,0),0), scale_linear("amax",0,4000,0,30) * -1, scale_linear("amax",0,4000,0,30) * -1)

# clip & move
translate(intersection($geometry,bounds(make_line(make_point(x(@map_extent_center) - (@map_extent_width/4), y(@map_extent_center) - (@map_extent_height/4)), make_point(x(@map_extent_center) + (@map_extent_width/4), y(@map_extent_center) + (@map_extent_height/4))))),0,-(@map_extent_height/4))

# create a geometry stack
collect_geometries(array_foreach(generate_series(0,to_int(replace(regexp_substr("other_tags",'(building:levels"=>"[0-9]+)'),'building:levels"=>"','')),1),translate($geometry,0,-@element)))
```

Translate points by height (order by dem ascending)
```
translate(make_point(round(x($geometry),1),round(y($geometry),1)),-clamp(0,"dem"*0.0002,0.5),clamp(0,"dem"*0.0002,0.5))
```

## Calculate

Case conditional  
```
CASE WHEN other_tags LIKE '%"amenity"=>"parking"%' THEN 1
  ELSE 0
END
```

Color ramps
```
# ramp by variable
ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1))

# ramp with alpha
set_color_part(ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1)),'alpha',@myalpha1)

# conditional ramp (with layer variables)
CASE WHEN DN >= 0 THEN ramp_color(@mycolorramp1,scale_linear("DN",@mymin1,@mymax1,0,1))
  ELSE ramp_color(@mycolorramp2,scale_linear("DN",@mymin2,@mymax2,0,1))
END

# conditional ramp from raster value
CASE WHEN raster_value('topo15_4320', 1, centroid($geometry)) > 0 THEN ramp_color('wiki-1.02', scale_linear(raster_value('topo15_4320', 1, centroid($geometry)),-1500,2000,0,1))
  ELSE ramp_color('Mako', scale_linear(raster_value('topo15_4320', 1, centroid($geometry)),-6000,0,0,1))
END

# color from distance
ramp_color('YlOrRd',scale_linear(distance(aggregate(layer:='bangkok_subway_stations',aggregate:='collect',expression:=$geometry),$geometry),0,500,1,0))

# color features in map extent
CASE WHEN intersects($geometry,@map_extent) THEN ramp_color('Spectral',scale_linear((array_find(array_agg("hybas_id",filter:=intersects($geometry,@map_extent)),"hybas_id") + 1),1,array_length(array_agg("hybas_id",filter:=intersects($geometry,@map_extent))),0,1))
  ELSE '255,255,255'
END
```

Intersecting with features
```
intersects($geometry, aggregate(layer:='bangkok_toronto_polygons_admin_level', aggregate:='collect', expression:=$geometry, filter:=intersects($geometry, @map_extent_center) AND "admin_level" IN ('9')))

CASE WHEN intersects($geometry,geometry(get_feature('ne_10m_land','featurecla','Land'))) THEN 1
  ELSE 0
END
```

Intersecting with map window
```
# using distance
(@map_extent_width/3) > distance(centroid($geometry),@map_extent_center)

# using buffer
intersects($geometry,buffer(@map_extent_center,0.5))

# using rectangle
x($geometry) > (x(@map_extent_center) - (@map_extent_width/4)) AND
x($geometry) < (x(@map_extent_center) + (@map_extent_width/4)) AND
y($geometry) > (y(@map_extent_center) - (@map_extent_height/4)) AND
y($geometry) < (y(@map_extent_center) + (@map_extent_height/4))

# using projected rectangle
x(transform($geometry, 'EPSG:4326', @map_crs)) > (x(@map_extent_center) - (@map_extent_width/4)) AND
x(transform($geometry, 'EPSG:4326', @map_crs)) < (x(@map_extent_center) + (@map_extent_width/4)) AND
y(transform($geometry, 'EPSG:4326', @map_crs)) > (y(@map_extent_center) - (@map_extent_height/4)) AND
y(transform($geometry, 'EPSG:4326', @map_crs)) < (y(@map_extent_center) + (@map_extent_height/4))

# using percentages
x($geometry) > (x(@map_extent_center) + (@map_extent_width*(-0.2))) AND
x($geometry) < (x(@map_extent_center) + (@map_extent_width*(-0.1))) AND
y($geometry) > (y(@map_extent_center) + (@map_extent_height*(-0.3))) AND
y($geometry) < (y(@map_extent_center) + (@map_extent_height*(0.3)))

# preserving grid in any projection
x($geometry) > x(transform(make_point(x(@map_extent_center) - (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')) AND x($geometry) < x(transform(make_point(x(@map_extent_center) + (@map_extent_width/3),y(@map_extent_center)),@map_crs,'epsg:4326')) AND y($geometry) > y(transform(make_point(x(@map_extent_center),y(@map_extent_center) - (@map_extent_height/3)),@map_crs,'epsg:4326')) AND y($geometry) < y(transform(make_point(x(@map_extent_center),y(@map_extent_center) + (@map_extent_height/3)),@map_crs,'epsg:4326'))
```

Offset from geometry
```
scale_linear(y($geometry),(y(@map_extent_center)-(@map_extent_width/2)),(y(@map_extent_center)+(@map_extent_height/2)),0,1000)
```

Majority filter
```
"SUBREGION" = majority("SUBREGION",filter:=intersects($geometry,@map_extent))
```

Percentage from top
```
round(((((y(@map_extent_center))+(@map_extent_height/2)-$y))/(@map_extent_height))*100) || '%'
```

Curve labels with projection
```
# use when x <= -160 or x >= 160
CASE WHEN x($geometry) >= 160 THEN smooth(make_line(translate($geometry,-20,0),translate($geometry,-10,0),$geometry),3)
  WHEN x($geometry) <= -160 THEN smooth(make_line($geometry,translate($geometry,10,0),translate($geometry,20,0)),3)
  ELSE smooth(make_line(translate($geometry,-10,0),$geometry,translate($geometry,10,0)),3)
END

# intersection with map extent
smooth(make_line(translate(centroid(intersection($geometry,@map_extent)),-20,0), translate(centroid(intersection($geometry,@map_extent)),0,0), translate(centroid(intersection($geometry,@map_extent)),20,0)),3)

# use make_line
smooth(make_line(translate(make_point(x(@map_extent_center),y(@map_extent_center)-(@map_extent_height/3)),-(@map_extent_height/3),(@map_extent_height/3)), translate(make_point(x(@map_extent_center),y(@map_extent_center)-(@map_extent_height/4)),-(@map_extent_height/3),(@map_extent_height/4)), make_point(x(@map_extent_center),y(@map_extent_center)-(@map_extent_height/3)), translate(make_point(x(@map_extent_center),y(@map_extent_center)-(@map_extent_height/4)),(@map_extent_height/3),(@map_extent_height/4)), translate(make_point(x(@map_extent_center),y(@map_extent_center)-(@map_extent_height/3)),(@map_extent_height/3),(@map_extent_height/3))),10)

# center of map (reverse for labels on the bottom)
boundary(make_circle(@map_extent_center,(@map_extent_height/3)))
reverse(boundary(make_circle(@map_extent_center,(@map_extent_height/3))))
```

Rotate labels
```
CASE WHEN "aspect" >= 0 AND "aspect" < 90 THEN scale_linear("aspect",0,90,350,360)
  WHEN "aspect" >= 90 AND "aspect" < 180 THEN scale_linear("aspect",90,180,0,10)
  WHEN "aspect" >= 180 AND "aspect" < 270 THEN scale_linear("aspect",180,270,170,180)
  WHEN "aspect" >= 270 AND "aspect" < 360 THEN scale_linear("aspect",270,360,180,190)
  ELSE 0
END
```

Place labels outside geometry
```
difference(@map_extent,$geometry)

intersection($geometry,minimal_circle(@atlas_geometry))
```

Make marker lines for labels
```
# align left or right
CASE WHEN x($geometry) >= x(@map_extent_center) THEN make_line($geometry,make_point(x(@map_extent_center)+(@map_extent_width/3),y($geometry)))
  ELSE make_line($geometry,make_point(x(@map_extent_center)-(@map_extent_width/3),y($geometry)))
END

# align left or right and spread along y
CASE WHEN x($geometry) >= x(@map_extent_center) THEN make_line($geometry,make_point(x(@map_extent_center)+(@map_extent_width/6),y($geometry)),make_point(x(@map_extent_center) + (@map_extent_width/4),scale_linear(y($geometry),(y(@map_extent_center)-(@map_extent_height/3)),(y(@map_extent_center)+(@map_extent_height)/3),(y(@map_extent_center)-(@map_extent_height/2.5)),(y(@map_extent_center)+(@map_extent_height/2.5)))))
  ELSE make_line($geometry,make_point(x(@map_extent_center)-(@map_extent_width/6),y($geometry)),make_point(x(@map_extent_center) - (@map_extent_width/4),scale_linear(y($geometry),(y(@map_extent_center)-(@map_extent_height/3)),(y(@map_extent_center)+(@map_extent_height)/3),(y(@map_extent_center)-(@map_extent_height/2.5)),(y(@map_extent_center)+(@map_extent_height/2.5)))))
END
```

Distribute graticule labels around map
```
"degrees" LIKE '%0' AND "direction" IN ('N','S') AND
(x($geometry) > (x(@map_extent_center) + (@map_extent_width/2.5)) OR x($geometry) < (x(@map_extent_center) - (@map_extent_width/2.5))) AND
(y($geometry) > (y(@map_extent_center) - (@map_extent_height/2.5)) AND y($geometry) < (y(@map_extent_center) + (@map_extent_height/2.5)))
```

Distribute ranked labels evenly
```
transform(smooth(make_line(make_point(-95,scale_linear("rank",1,10,50,45)), make_point(-85,scale_linear("rank",1,10,50,45)), make_point(-75,scale_linear("rank",1,10,50,45))),3),'ESRI:4326','EPSG:102010')

transform(smooth(make_line(make_point(scale_linear("row",1,52,-66,-127),50), make_point(scale_linear("row",1,52,-66,-127),55), make_point(scale_linear("row",1,52,-66,-127),60)),3),'ESRI:4326','EPSG:102010')
```

Calculate angle
```
(atan((xat(-1)-xat(0))/(yat(-1)-yat(0)))) * 180/3.14159 + (180 *(((yat(-1)-yat(0)) < 0) + (((xat(-1)-xat(0)) < 0 AND (yat(-1) - yat(0)) >0)*2)))
```

Conditional angles
```
CASE WHEN ("line_direction" > 0 AND "line_direction" < 45) OR ("line_direction" > 135 AND "line_direction" < 225) OR ("line_direction" > 315) THEN 0
  WHEN ("line_direction" >= 45 AND "line_direction" <= 135) OR ("line_direction" >= 225 AND "line_direction" <= 315) THEN 315
  ELSE 0
END
```

Order angles from center (for distributing labels evenly in a circle)
```
array_find(array_distinct(array_agg(expression:="id", filter:=intersects_bbox($geometry,@map_extent), order_by:=azimuth(@map_extent_center,(centroid($geometry))))),"id") + 1
```

Angle from geometry
```
angle_at_vertex(transform(make_line($geometry,translate($geometry,10,0)),'EPSG:4326','EPSG:53029'),1)

line_interpolate_angle(make_line(make_point(x($geometry),y($geometry)),make_point((x(@map_extent_center)+(@map_extent_width/2)),y(@map_extent_center))),10)+270

angle_at_vertex(intersection(@map_extent,smooth($geometry,1)),(num_points(intersection(@map_extent,smooth($geometry,1)))/2))-90
```

Project
```
azimuth(transform($geometry,'EPSG:4326','+proj=vandg +lon_0=0 +x_0=0 +y_0=0 +R_A +a=6371000 +b=6371000 +units=m no_defs'), translate(transform($geometry,'EPSG:4326','+proj=vandg +lon_0=0 +x_0=0 +y_0=0 +R_A +a=6371000 +b=6371000 +units=m no_defs'),0,1))
```

Rotate  
```
(((x($geometry) - x(@map_extent_center))*cos(radians(@mydegrees))) - ((y($geometry) - y(@map_extent_center))*sin(radians(@mydegrees)))) + x(@map_extent_center)
(((x($geometry) - x(@map_extent_center))*sin(radians(@mydegrees))) + ((y($geometry) - y(@map_extent_center))*cos(radians(@mydegrees)))) + y(@map_extent_center)
```

Get coordinates from top-left (0,0)  
```
round(((((x(@map_extent_center))-(@map_extent_width/2)-$x))/(-@map_extent_width))*100) || '|' ||

round(((((y(@map_extent_center))+(@map_extent_height/2)-$y))/(@map_extent_height))*100) || '|'
```

Odd & even fields  
```
# odd columns
floor( $id / number_of_columns ) % 2 = 1

# even columns
floor( $id / number_of_columns ) % 2 = 0
```

## Strings

Delete english characters
```
regexp_replace("name", '[0-9A-Za-z;.,\\?\\/\\-\\(\\)ºçàèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸěǎāīū]' , '' )

regexp_replace("name", '[0-9A-Za-z;\\?\\/\\-\\(\\)]' , '' )
```

Translate by replace
```
replace(replace(replace(replace(replace(replace(replace(replace(replace("featureclass",'A','境'),'H','水'),'L','区'),'P','位'),'R','路'),'S','点'),'T','山'),'U','海'),'V','卉')
```

Get sentence
```
substr("field_4",strpos("field_4",'\\.')+2,strpos(substr("field_4",strpos("field_4",'\\.')+2,200),'\\.'))
```

Get nth word
```
regexp_substr("point_tags", '^(?:\\S+\\s){0}(\\S+)')

regexp_substr("ECO_NAME",'([^( ]*)$')
```

Add space/newline between characters
```
regexp_replace("Cls",'([A-Z])','\\1 ')

regexp_replace("zh",'(.)','\\1\n')
```

Extract & replace
```
# building height, levels
replace(regexp_substr("other_tags",'(height"=>"[0-9]+\\.[0-9]+)'),'height"=>"','')
replace(regexp_substr("other_tags",'(building:levels"=>"[0-9]+)'),'building:levels"=>"','')*10

# address
replace(regexp_substr("other_tags",'(addr:housenumber"=>"[1-9]{1,3})'),'addr:housenumber"=>"','')
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

CASE WHEN "aspectmean" >= 0 AND "aspectmean" < 90 THEN '\\'
  WHEN "aspectmean" >= 90 AND "aspectmean" < 180 THEN '/'
  WHEN "aspectmean" >= 180 AND "aspectmean" < 270 THEN '\\'
  ELSE '/'
END
```

One-to-many relation (project properties > relations)
```
relation_aggregate('contour_gbif','min',"vname_en")

relation_aggregate('contour_gbif','concatenate',"vname_en",',')
```

Aggregate
```
aggregate(layer:='ne_10m_airports_snap1',aggregate:='concatenate',expression:="abbrev",filter:="scalerank" IS NOT NULL,concatenator:='\n')

aggregate(layer:='places_3857',aggregate:='concatenate',expression:="name",filter:=intersects($geometry,buffer(@map_extent_center,100000)),concatenator:='\n')

aggregate(layer:='wwf_terr_ecos_3857',aggregate:='concatenate_unique',expression:="ECO_SYM" || ' ' || "ECO_NAME",filter:=intersects($geometry,@map_extent),concatenator:='\n')

aggregate(layer:='places_3857',aggregate:='concatenate',expression:="name",filter:="iso_a2" = attribute(@atlas_feature,'iso_a2'),concatenator:='\n')

array_find(array_agg("fid", group_by:="ADM0_A3", order_by:="POP_MAX"), "fid")

intersects($geometry,aggregate('ne_50m_admin_0_map_subunits','collect',$geometry,intersects($geometry,@map_extent_center)))

aggregate(layer:='bangkok_toronto_points_neighbourhoods_3857', aggregate:= 'concatenate', filter:=intersects($geometry,@map_extent), expression:= trim(eval(array_find(array_distinct(array_agg(expression:="ogc_fid", filter:=intersects($geometry,@map_extent), order_by:=$x)),"ogc_fid") + 1) || ' ' || "name" || '\n'), order_by:=$x)
```

Aggregate legend
```
trim(replace(wordwrap(replace(replace(aggregate('places',aggregate:='concatenate',expression:="name" || ' ' || round("longitude") || '°,' || round("latitude") || '°@',filter:="scalerank" IN (0,1,2,3,4,5) AND
(@map_extent_width/3) > distance(centroid($geometry),@map_extent_center),order_by:="name"
),' ','_'),'@',' '),50),'_',' '))
```

Get attribute
```
attribute(get_feature('admin1_clean',$geometry,closest_point(geometry(get_feature('admin1_clean','enwiki_title',IS NOT NULL)),$geometry)),'enwiki_title')

aggregate(layer:='ne_50m_admin_0_countries',aggregate:='concatenate',expression:="CONTINENT",filter:=intersects($geometry,@map_extent_center),concatenator:=' ') || '\n' || wordwrap("_ECO_NAME",20) || '\n1:' || format_number(@map_scale,0)
```

Get array
```
replace(replace(array_to_string(array_slice(string_to_array(attribute(@atlas_feature,'geonames_mt')),0,9)),'{',''),'"','')
```

Get attribute matching name
```
attribute(get_feature('puma2020_nyc','name',"name"), 'pop2020')
```

Enumerate features in extent
```
(array_find(array_distinct(array_agg(expression:="ECO_ID", filter:=intersects_bbox($geometry,@map_extent), order_by:="ECO_NAME")),"ECO_ID") + 1)

aggregate(layer:='wwf_terr_ecos_3857',aggregate:='concatenate_unique',expression:='⬜ ' || (array_find(array_agg(expression:="ECO_NAME", filter:=intersects($geometry,@map_extent) AND $area >= '2500000000'), "ECO_NAME") + 1) || ' ' || "ECO_NAME",filter:=intersects($geometry,@map_extent) AND $area >= '2500000000',concatenator:='\n',order_by:="ECO_NAME")
```

Get attribute of geometry expression
```
"SUBREGION" = array_to_string(array_agg(expression:="SUBREGION", filter:=intersects($geometry,@map_extent_center)))
```

Get array of names of nearest features
```
array_to_string(overlay_nearest(layer:='bangkok_points', expression:="name", filter:=other_tags LIKE '%station"=>"subway"%', limit:=1))
```

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

HTML labels (check allow html formatting)  
```
'<p style="font-family:Montserrat; font-size:12pt; font-weight:600; color: #333;">' || "name" || '</p><p style="font-family:Montserrat; font-weight:300; font-size:10pt; color: #666;">' || format_number("elevation",0)  || 'm</span>'
```

Make your own legend with HTML  
```
'<p style="font-size:8pt; font-weight:500;">MEDIAN AGE BY COUNTY</p><p><span style="color:#D9D9D9;">⬛</span> <span>21 - 38 </span></p>
<p><span style="color:#C2CBCD;">⬛</span> <span>39 - 41</span></p>
<p><span style="color:#9CB4B7;">⬛</span> <span>42 - 44</span></p>
<p><span style="color:#76938E;">⬛</span> <span>45 - 68</span></p>'
```  

## Print layout

Variables
```
"_CONTINENT" || '_' || "adm0name" || '_' || "adm1name" || '_' || "name" || '_' || round(map_get(item_variables('Map 1'),'map_extent_width') / 3)

replace("_CONTINENT" || '_x_' || round("longitude") || '_y_' || round("latitude") || '_width_' || round(map_get(item_variables('Map 1'),'map_extent_width')) || '_height_' || round(map_get(item_variables('Map 1'),'map_extent_height')),' ','_')

replace(replace("_CONTINENT" || '@' || "biome" || '@' || "adm0name" || '_x_' || round("longitude",2) || '_y_' || round("latitude",2) || '_width_' || round(map_get(item_variables('Map 1'),'map_extent_width'),2) || '_height_' || round(map_get(item_variables('Map 1'),'map_extent_height'),2),' ','_'),'/','_')
```

Scale with map id
```
1:[% format_number(map_get(item_variables( 'map1' ), 'map_scale'),0) %]
```

Regex replace
```
regexp_replace(replace(@atlas_pagename, '.', ''), ' +', '_')
```

HTML labels
```
<p style="font-family:'Montserrat Thin';letter-spacing:10">WORLD MAP</p>
```

Layout projection  
```
# by atlas feature
'PROJ:+proj=ortho +lat_0=' || y(centroid(buffer(@atlas_geometry,0))) || ' +lon_0=' || x(centroid(buffer(@atlas_geometry,0))) || ' +ellps=sphere'

# continent
CASE WHEN attribute(@atlas_feature,'CONTINENT') IN ('Africa') THEN 'PROJ:+proj=ortho +lat_0="7" +lon_0="18" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('Asia','Oceania') THEN 'PROJ:+proj=ortho +lat_0="20" +lon_0="100" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('Europe') THEN 'PROJ:+proj=ortho +lat_0="30" +lon_0="30" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('North America') THEN 'PROJ:+proj=ortho +lat_0="68" +lon_0="-84" +ellps=sphere'
  WHEN attribute(@atlas_feature,'CONTINENT') IN ('South America') THEN 'PROJ:+proj=ortho +lat_0="-18" +lon_0="-61" +ellps=sphere'
  ELSE 'PROJ:+proj=ortho +lat_0=0 +lon_0=0 +ellps=sphere'
END

# subregion
CASE WHEN attribute(@atlas_feature,'subregion') IN ('Caribbean') THEN 'PROJ:+proj=ortho +lat_0=20 +lon_0=-75 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Southern Europe') THEN 'PROJ:+proj=ortho +lat_0=41 +lon_0=7 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Eastern Africa') THEN 'PROJ:+proj=ortho +lat_0=-4 +lon_0=37 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Eastern Asia') THEN 'PROJ:+proj=ortho +lat_0=38 +lon_0=105 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('South America') THEN 'PROJ:+proj=ortho +lat_0=-15 +lon_0=-61 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Australia and New Zealand') THEN 'PROJ:+proj=ortho +lat_0=-26 +lon_0=136 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Antarctica') THEN 'PROJ:+proj=ortho +lat_0=-81 +lon_0=20 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Western Africa') THEN 'PROJ:+proj=ortho +lat_0=15 +lon_0=-1 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Melanesia') THEN 'PROJ:+proj=ortho +lat_0=-8 +lon_0=148 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Southern Asia') THEN 'PROJ:+proj=ortho +lat_0=27 +lon_0=71 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Eastern Europe') THEN 'PROJ:+proj=ortho +lat_0=61 +lon_0=92 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Middle Africa') THEN 'PROJ:+proj=ortho +lat_0=1 +lon_0=19 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Polynesia') THEN 'PROJ:+proj=ortho +lat_0=-15 +lon_0=-159 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Central America') THEN 'PROJ:+proj=ortho +lat_0=22 +lon_0=-99 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Northern Africa') THEN 'PROJ:+proj=ortho +lat_0=25 +lon_0=15 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Central Asia') THEN 'PROJ:+proj=ortho +lat_0=46 +lon_0=66 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Western Europe') THEN 'PROJ:+proj=ortho +lat_0=66 +lon_0=4 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Western Asia') THEN 'PROJ:+proj=ortho +lat_0=28 +lon_0=43 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Northern America') THEN 'PROJ:+proj=ortho +lat_0=59 +lon_0=-92 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Northern Europe') THEN 'PROJ:+proj=ortho +lat_0=63 +lon_0=14 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('South-Eastern Asia') THEN 'PROJ:+proj=ortho +lat_0=8 +lon_0=110 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Southern Africa') THEN 'PROJ:+proj=ortho +lat_0=-25 +lon_0=23 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Seven seas (open ocean)') THEN 'PROJ:+proj=ortho +lat_0=-51 +lon_0=31 +ellps=sphere'
WHEN attribute(@atlas_feature,'subregion') IN ('Micronesia') THEN 'PROJ:+proj=ortho +lat_0=8 +lon_0=93 +ellps=sphere'
ELSE 'PROJ:+proj=ortho +lat_0=0 +lon_0=0 +ellps=sphere'
END
```

Change font, style, size with map id
```
# set @map_id to 'font_IBM Plex Sans_style_Regular_size_8_bgx_0_bgy_0.5_'
# font style
regexp_replace(regexp_replace(@map_id,'font_',''),'_.*$','')
```

Change page/layout size with atlas geometry (map scale 1:3000000)
```
# width
bounds_width(transform(@atlas_geometry,'EPSG:4326','EPSG:3857'))*0.001/3

# height
bounds_height(transform(@atlas_geometry,'EPSG:4326','EPSG:3857'))*0.001/3
```

## Datasets

### GEM

Grid 2.5d height from cloud cover raster  
```
scale_linear(raster_value('CMC_glb_TCDC_SFC_0_latlon.15x.15_2024031500_P075', 1, centroid($geometry)),0,100,0,1)
```

### GeoNames

Stacking symbols
```
translate(make_point(round(x($geometry),0),round(y($geometry),0)),0,scale_linear("dem",0,4000,0,4))
```

### Global Lithological Map

Labels
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

### OpenStreetMap

General
```
# scale transparency from map center
set_color_part('#000', 'alpha', scale_linear(distance(@map_extent_center,$geometry),0,1000,100,0))
```

Tags
```
# Label english name if available
CASE WHEN "other_tags" LIKE '%name:en%' THEN regexp_replace(regexp_replace("other_tags",'^.*"name:en"=>"',''),'".*$','')
  ELSE "name"
END
```

Highways
```
# color from field array
ramp_color('Spectral',scale_linear(array_find(array('motorway','trunk','primary','secondary','tertiary','residential'),"highway"),0,5,0,1))
```

Subways
```
# subway routes from multilinestrings
other_tags LIKE '%"route"=>"subway"%'

# subway station from points
other_tags LIKE '%station"=>"subway"%'

# buildings nearest to subway station
array_to_string(overlay_nearest(layer:='bangkok_points', filter:="other_tags" LIKE '%station"=>"subway"%', expression:="name")) = 'นานา'

# color buildings according to distance from subway station
ramp_color('Spectral',scale_linear(distance(geometry(get_feature('bangkok_subway_stations','name','นานา')),$geometry),0,1000,0,1))
```

Amenities
```
# parking
other_tags LIKE '%"amenity"=>"parking"%'
```

Buildings  
```
# qgis_25d_height variable based on height, levels
CASE WHEN "other_tags" LIKE '%building:levels%' THEN replace(regexp_substr("other_tags",'(building:levels"=>"[0-9]+)'),'building:levels"=>"','')*10 WHEN "other_tags" LIKE '%height%' THEN replace(regexp_substr("other_tags",'(height"=>"[0-9]+)'),'height"=>"','')*5 ELSE 20 END
```

GLAM/GLEAM map with light beam  
```
# filter by glam tags
(other_tags LIKE '%"gallery"%' OR other_tags LIKE '%"library"%' OR '%"archive"%' OR other_tags LIKE '%"museum"%') AND name IS NOT NULL;

# create a layer variable 'beam_of_light' with this value
@map_extent_height - y($geometry)

# use this expression on 2.5d top face
translate(  $geometry,  cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @beam_of_light ),  sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @beam_of_light ))

# use this expression on 2.5d side face
order_parts(   extrude(    segments_to_lines( $geometry ),    cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @beam_of_light ),    sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @beam_of_light )  ),  'distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))',  False)
```

### WWF Ecoregions

Realms  
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

Biomes  
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

Control shading with slope
```
set_color_part('#000','alpha',scale_linear("slp_dg_sav",0,300,0,100))
```

US Census
```
# calculate statistics

```
