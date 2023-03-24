# qgis-expressions
QGIS

## Symbology

### Geometry generator
Stack points by height (order by dem ascending)

`translate(make_point(round(x($geometry),1),round(y($geometry),1)),-clamp(0,"dem"*0.0002,0.5),clamp(0,"dem"*0.0002,0.5))`

Snap points by rounding

`make_point(round($x/100)*100,round($y/100)*100)`

Calculate percent from top

`round(((((y(@map_extent_center))+(@map_extent_height/2)-$y))/(@map_extent_height))*100) || '%'`

### Styling
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

## Labels

### Strings
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

