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

### Styling
Set color ramps

`ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1))`

`set_color_part(ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1)),'alpha',@myalpha1)`

```
CASE WHEN DN >= 0 THEN ramp_color(@mycolorramp1,scale_linear("DN",@mymin1,@mymax1,0,1))
  ELSE ramp_color(@mycolorramp2,scale_linear("DN",@mymin2,@mymax2,0,1))
END
```


