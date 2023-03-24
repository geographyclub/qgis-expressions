# qgis-expressions
QGIS

## Symbology

### Geometry generator
stack points by height (order by dem ascending)  
`translate(make_point(round(x($geometry),1),round(y($geometry),1)),-clamp(0,"dem"*0.0002,0.5),clamp(0,"dem"*0.0002,0.5))`

### Styling
set color ramps  
`ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1))`
`set_color_part(ramp_color(@mycolorramp1,scale_linear(elev,@mymin1,@mymax1,0,1)),'alpha',@myalpha1)`
```
CASE WHEN DN >= 0 THEN ramp_color(@mycolorramp1,scale_linear("DN",@mymin1,@mymax1,0,1))
  ELSE ramp_color(@mycolorramp2,scale_linear("DN",@mymin2,@mymax2,0,1))
END
```

### Creating
snap points by rounding
`make_point(round($x/100)*100,round($y/100)*100)`

