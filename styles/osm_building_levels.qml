<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.16-Białowieża" labelsEnabled="0" simplifyMaxScale="1" minScale="100000000" styleCategories="AllStyleCategories" maxScale="0" simplifyLocal="1" symbologyReferenceScale="-1" simplifyDrawingHints="1" simplifyAlgorithm="0" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal durationField="" fixedDuration="0" limitMode="0" startField="" enabled="0" mode="0" endField="" accumulate="0" startExpression="" durationUnit="min" endExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 referencescale="-1" type="RuleRenderer" symbollevels="0" forceraster="0" enableorderby="1">
    <rules key="{6be4223e-1c84-4122-b916-686e044dc1c9}">
      <rule key="{daa72b09-6e55-401a-98d3-8168d1c1094c}" symbol="0"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="fill" alpha="1" name="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="1" pass="0" enabled="1" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="0,0,255,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,255,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <effect type="effectStack" enabled="1">
            <effect type="outerGlow">
              <Option type="Map">
                <Option type="QString" value="0" name="blend_mode"/>
                <Option type="QString" value="5" name="blur_level"/>
                <Option type="QString" value="MM" name="blur_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                <Option type="QString" value="69,116,40,255" name="color1"/>
                <Option type="QString" value="188,220,60,255" name="color2"/>
                <Option type="QString" value="0" name="color_type"/>
                <Option type="QString" value="0" name="discrete"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="0.5" name="opacity"/>
                <Option type="QString" value="gradient" name="rampType"/>
                <Option type="QString" value="17,17,17,255" name="single_color"/>
                <Option type="QString" value="4" name="spread"/>
                <Option type="QString" value="MapUnit" name="spread_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
              </Option>
              <prop v="0" k="blend_mode"/>
              <prop v="5" k="blur_level"/>
              <prop v="MM" k="blur_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
              <prop v="69,116,40,255" k="color1"/>
              <prop v="188,220,60,255" k="color2"/>
              <prop v="0" k="color_type"/>
              <prop v="0" k="discrete"/>
              <prop v="2" k="draw_mode"/>
              <prop v="0" k="enabled"/>
              <prop v="0.5" k="opacity"/>
              <prop v="gradient" k="rampType"/>
              <prop v="17,17,17,255" k="single_color"/>
              <prop v="4" k="spread"/>
              <prop v="MapUnit" k="spread_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
            </effect>
          </effect>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" enabled="1" class="GeometryGenerator">
          <Option type="Map">
            <Option type="QString" value="Fill" name="SymbolType"/>
            <Option type="QString" value="order_parts(   extrude(    segments_to_lines( $geometry ),    cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),    sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height )  ),  'distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))',  False)" name="geometryModifier"/>
            <Option type="QString" value="MapUnit" name="units"/>
          </Option>
          <prop v="Fill" k="SymbolType"/>
          <prop v="order_parts(   extrude(    segments_to_lines( $geometry ),    cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),    sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height )  ),  'distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))',  False)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="fill" alpha="1" name="@0@1" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" enabled="1" class="SimpleFill">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="0,0,0,26" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0.26" name="outline_width"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="0,0,0,26" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0.26" k="outline_width"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="false" name="active"/>
                      <Option type="QString" value="set_color_part('#000', 'alpha', scale_linear(distance(@map_extent_center,$geometry),0,1000,50,0))" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" enabled="1" class="GeometryGenerator">
          <Option type="Map">
            <Option type="QString" value="Fill" name="SymbolType"/>
            <Option type="QString" value="translate(  $geometry,  cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),  sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ))" name="geometryModifier"/>
            <Option type="QString" value="MapUnit" name="units"/>
          </Option>
          <prop v="Fill" k="SymbolType"/>
          <prop v="translate(  $geometry,  cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),  sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ))" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="fill" alpha="1" name="@0@2" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" enabled="1" class="SimpleFill">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="255,255,255,255" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0.26" name="outline_width"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="no" k="outline_style"/>
              <prop v="0.26" k="outline_width"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="fillColor">
                      <Option type="bool" value="false" name="active"/>
                      <Option type="QString" value="set_color_part('#000', 'alpha', scale_linear(distance(@map_extent_center,$geometry),0,1000,50,0))" name="expression"/>
                      <Option type="int" value="3" name="type"/>
                    </Option>
                  </Option>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <effect type="effectStack" enabled="1">
      <effect type="dropShadow">
        <Option type="Map">
          <Option type="QString" value="13" name="blend_mode"/>
          <Option type="QString" value="2.645" name="blur_level"/>
          <Option type="QString" value="MM" name="blur_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
          <Option type="QString" value="0,0,0,255" name="color"/>
          <Option type="QString" value="2" name="draw_mode"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="135" name="offset_angle"/>
          <Option type="QString" value="2" name="offset_distance"/>
          <Option type="QString" value="MM" name="offset_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
          <Option type="QString" value="1" name="opacity"/>
        </Option>
        <prop v="13" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,0,255" k="color"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="135" k="offset_angle"/>
        <prop v="2" k="offset_distance"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
        <prop v="1" k="opacity"/>
      </effect>
      <effect type="outerGlow">
        <Option type="Map">
          <Option type="QString" value="0" name="blend_mode"/>
          <Option type="QString" value="2.645" name="blur_level"/>
          <Option type="QString" value="MM" name="blur_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
          <Option type="QString" value="69,116,40,255" name="color1"/>
          <Option type="QString" value="188,220,60,255" name="color2"/>
          <Option type="QString" value="0" name="color_type"/>
          <Option type="QString" value="0" name="discrete"/>
          <Option type="QString" value="2" name="draw_mode"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="0.5" name="opacity"/>
          <Option type="QString" value="gradient" name="rampType"/>
          <Option type="QString" value="255,255,255,255" name="single_color"/>
          <Option type="QString" value="2" name="spread"/>
          <Option type="QString" value="MM" name="spread_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
        </Option>
        <prop v="0" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="69,116,40,255" k="color1"/>
        <prop v="188,220,60,255" k="color2"/>
        <prop v="0" k="color_type"/>
        <prop v="0" k="discrete"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="0.5" k="opacity"/>
        <prop v="gradient" k="rampType"/>
        <prop v="255,255,255,255" k="single_color"/>
        <prop v="2" k="spread"/>
        <prop v="MM" k="spread_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
      </effect>
      <effect type="transform">
        <Option type="Map">
          <Option type="QString" value="2" name="draw_mode"/>
          <Option type="QString" value="1" name="enabled"/>
          <Option type="QString" value="0" name="reflect_x"/>
          <Option type="QString" value="0" name="reflect_y"/>
          <Option type="QString" value="45" name="rotation"/>
          <Option type="QString" value="1" name="scale_x"/>
          <Option type="QString" value="1" name="scale_y"/>
          <Option type="QString" value="-0.2" name="shear_x"/>
          <Option type="QString" value="-0.2" name="shear_y"/>
          <Option type="QString" value="MM" name="translate_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="translate_unit_scale"/>
          <Option type="QString" value="0" name="translate_x"/>
          <Option type="QString" value="0" name="translate_y"/>
        </Option>
        <prop v="2" k="draw_mode"/>
        <prop v="1" k="enabled"/>
        <prop v="0" k="reflect_x"/>
        <prop v="0" k="reflect_y"/>
        <prop v="45" k="rotation"/>
        <prop v="1" k="scale_x"/>
        <prop v="1" k="scale_y"/>
        <prop v="-0.2" k="shear_x"/>
        <prop v="-0.2" k="shear_y"/>
        <prop v="MM" k="translate_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="translate_unit_scale"/>
        <prop v="0" k="translate_x"/>
        <prop v="0" k="translate_y"/>
      </effect>
      <effect type="innerShadow">
        <Option type="Map">
          <Option type="QString" value="13" name="blend_mode"/>
          <Option type="QString" value="2.645" name="blur_level"/>
          <Option type="QString" value="MM" name="blur_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
          <Option type="QString" value="0,0,0,255" name="color"/>
          <Option type="QString" value="2" name="draw_mode"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="135" name="offset_angle"/>
          <Option type="QString" value="2" name="offset_distance"/>
          <Option type="QString" value="MM" name="offset_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
          <Option type="QString" value="1" name="opacity"/>
        </Option>
        <prop v="13" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,0,255" k="color"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="135" k="offset_angle"/>
        <prop v="2" k="offset_distance"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
        <prop v="1" k="opacity"/>
      </effect>
      <effect type="innerGlow">
        <Option type="Map">
          <Option type="QString" value="0" name="blend_mode"/>
          <Option type="QString" value="2.645" name="blur_level"/>
          <Option type="QString" value="MM" name="blur_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
          <Option type="QString" value="69,116,40,255" name="color1"/>
          <Option type="QString" value="188,220,60,255" name="color2"/>
          <Option type="QString" value="0" name="color_type"/>
          <Option type="QString" value="0" name="discrete"/>
          <Option type="QString" value="2" name="draw_mode"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="0.5" name="opacity"/>
          <Option type="QString" value="gradient" name="rampType"/>
          <Option type="QString" value="255,255,255,255" name="single_color"/>
          <Option type="QString" value="2" name="spread"/>
          <Option type="QString" value="MM" name="spread_unit"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
        </Option>
        <prop v="0" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="69,116,40,255" k="color1"/>
        <prop v="188,220,60,255" k="color2"/>
        <prop v="0" k="color_type"/>
        <prop v="0" k="discrete"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="0.5" k="opacity"/>
        <prop v="gradient" k="rampType"/>
        <prop v="255,255,255,255" k="single_color"/>
        <prop v="2" k="spread"/>
        <prop v="MM" k="spread_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
      </effect>
    </effect>
    <orderby>
      <orderByClause nullsFirst="1" asc="0">distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))</orderByClause>
    </orderby>
  </renderer-v2>
  <customproperties>
    <Option type="Map">
      <Option type="int" value="0" name="embeddedWidgets/count"/>
      <Option type="StringList" name="variableNames">
        <Option type="QString" value="qgis_25d_angle"/>
        <Option type="QString" value="qgis_25d_height"/>
      </Option>
      <Option type="StringList" name="variableValues">
        <Option type="QString" value="135"/>
        <Option type="QString" value="replace(regexp_substr(&quot;other_tags&quot;,'(building:levels&quot;=>&quot;[0-9]+)'),'building:levels&quot;=>&quot;','')*10"/>
      </Option>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" opacity="1" showAxis="1" labelPlacementMethod="XHeight" spacingUnit="MM" minimumSize="0" spacing="5" minScaleDenominator="0" penWidth="0" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" enabled="0" sizeType="MM" height="15" scaleDependency="Area" direction="0" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" maxScaleDenominator="1e+08" rotationOffset="270" scaleBasedVisibility="0" width="15" penAlpha="255" backgroundColor="#ffffff" spacingUnitScale="3x:0,0,0,0,0,0" lineSizeType="MM" backgroundAlpha="255">
      <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" colorOpacity="1" field="" label=""/>
      <axisSymbol>
        <symbol force_rhr="0" type="line" alpha="1" name="" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" enabled="1" class="SimpleLine">
            <Option type="Map">
              <Option type="QString" value="0" name="align_dash_pattern"/>
              <Option type="QString" value="square" name="capstyle"/>
              <Option type="QString" value="5;2" name="customdash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
              <Option type="QString" value="MM" name="customdash_unit"/>
              <Option type="QString" value="0" name="dash_pattern_offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
              <Option type="QString" value="0" name="draw_inside_polygon"/>
              <Option type="QString" value="bevel" name="joinstyle"/>
              <Option type="QString" value="35,35,35,255" name="line_color"/>
              <Option type="QString" value="solid" name="line_style"/>
              <Option type="QString" value="0.26" name="line_width"/>
              <Option type="QString" value="MM" name="line_width_unit"/>
              <Option type="QString" value="0" name="offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="offset_unit"/>
              <Option type="QString" value="0" name="ring_filter"/>
              <Option type="QString" value="0" name="trim_distance_end"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_end_unit"/>
              <Option type="QString" value="0" name="trim_distance_start"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
              <Option type="QString" value="MM" name="trim_distance_start_unit"/>
              <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
              <Option type="QString" value="0" name="use_custom_dash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="trim_distance_end"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
            <prop v="MM" k="trim_distance_end_unit"/>
            <prop v="0" k="trim_distance_start"/>
            <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
            <prop v="MM" k="trim_distance_start_unit"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" linePlacementFlags="18" dist="0" zIndex="0" priority="0" showAll="1" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="ogc_fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="osm_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="osm_way_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="aeroway">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="amenity">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="admin_level">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="barrier">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="boundary">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="building">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="craft">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="geological">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="historic">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="land_area">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="landuse">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="leisure">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="man_made">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="military">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="natural">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="office">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="place">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="shop">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="sport">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tourism">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="other_tags">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="ogc_fid" name=""/>
    <alias index="1" field="osm_id" name=""/>
    <alias index="2" field="osm_way_id" name=""/>
    <alias index="3" field="name" name=""/>
    <alias index="4" field="type" name=""/>
    <alias index="5" field="aeroway" name=""/>
    <alias index="6" field="amenity" name=""/>
    <alias index="7" field="admin_level" name=""/>
    <alias index="8" field="barrier" name=""/>
    <alias index="9" field="boundary" name=""/>
    <alias index="10" field="building" name=""/>
    <alias index="11" field="craft" name=""/>
    <alias index="12" field="geological" name=""/>
    <alias index="13" field="historic" name=""/>
    <alias index="14" field="land_area" name=""/>
    <alias index="15" field="landuse" name=""/>
    <alias index="16" field="leisure" name=""/>
    <alias index="17" field="man_made" name=""/>
    <alias index="18" field="military" name=""/>
    <alias index="19" field="natural" name=""/>
    <alias index="20" field="office" name=""/>
    <alias index="21" field="place" name=""/>
    <alias index="22" field="shop" name=""/>
    <alias index="23" field="sport" name=""/>
    <alias index="24" field="tourism" name=""/>
    <alias index="25" field="other_tags" name=""/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="ogc_fid" expression=""/>
    <default applyOnUpdate="0" field="osm_id" expression=""/>
    <default applyOnUpdate="0" field="osm_way_id" expression=""/>
    <default applyOnUpdate="0" field="name" expression=""/>
    <default applyOnUpdate="0" field="type" expression=""/>
    <default applyOnUpdate="0" field="aeroway" expression=""/>
    <default applyOnUpdate="0" field="amenity" expression=""/>
    <default applyOnUpdate="0" field="admin_level" expression=""/>
    <default applyOnUpdate="0" field="barrier" expression=""/>
    <default applyOnUpdate="0" field="boundary" expression=""/>
    <default applyOnUpdate="0" field="building" expression=""/>
    <default applyOnUpdate="0" field="craft" expression=""/>
    <default applyOnUpdate="0" field="geological" expression=""/>
    <default applyOnUpdate="0" field="historic" expression=""/>
    <default applyOnUpdate="0" field="land_area" expression=""/>
    <default applyOnUpdate="0" field="landuse" expression=""/>
    <default applyOnUpdate="0" field="leisure" expression=""/>
    <default applyOnUpdate="0" field="man_made" expression=""/>
    <default applyOnUpdate="0" field="military" expression=""/>
    <default applyOnUpdate="0" field="natural" expression=""/>
    <default applyOnUpdate="0" field="office" expression=""/>
    <default applyOnUpdate="0" field="place" expression=""/>
    <default applyOnUpdate="0" field="shop" expression=""/>
    <default applyOnUpdate="0" field="sport" expression=""/>
    <default applyOnUpdate="0" field="tourism" expression=""/>
    <default applyOnUpdate="0" field="other_tags" expression=""/>
  </defaults>
  <constraints>
    <constraint field="ogc_fid" notnull_strength="1" constraints="3" unique_strength="1" exp_strength="0"/>
    <constraint field="osm_id" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="osm_way_id" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="name" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="type" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="aeroway" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="amenity" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="admin_level" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="barrier" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="boundary" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="building" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="craft" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="geological" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="historic" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="land_area" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="landuse" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="leisure" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="man_made" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="military" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="natural" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="office" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="place" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="shop" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="sport" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="tourism" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint field="other_tags" notnull_strength="0" constraints="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="ogc_fid" exp=""/>
    <constraint desc="" field="osm_id" exp=""/>
    <constraint desc="" field="osm_way_id" exp=""/>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="type" exp=""/>
    <constraint desc="" field="aeroway" exp=""/>
    <constraint desc="" field="amenity" exp=""/>
    <constraint desc="" field="admin_level" exp=""/>
    <constraint desc="" field="barrier" exp=""/>
    <constraint desc="" field="boundary" exp=""/>
    <constraint desc="" field="building" exp=""/>
    <constraint desc="" field="craft" exp=""/>
    <constraint desc="" field="geological" exp=""/>
    <constraint desc="" field="historic" exp=""/>
    <constraint desc="" field="land_area" exp=""/>
    <constraint desc="" field="landuse" exp=""/>
    <constraint desc="" field="leisure" exp=""/>
    <constraint desc="" field="man_made" exp=""/>
    <constraint desc="" field="military" exp=""/>
    <constraint desc="" field="natural" exp=""/>
    <constraint desc="" field="office" exp=""/>
    <constraint desc="" field="place" exp=""/>
    <constraint desc="" field="shop" exp=""/>
    <constraint desc="" field="sport" exp=""/>
    <constraint desc="" field="tourism" exp=""/>
    <constraint desc="" field="other_tags" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" type="field" hidden="0" name="ogc_fid"/>
      <column width="-1" type="field" hidden="0" name="osm_id"/>
      <column width="-1" type="field" hidden="0" name="osm_way_id"/>
      <column width="-1" type="field" hidden="0" name="name"/>
      <column width="-1" type="field" hidden="0" name="type"/>
      <column width="-1" type="field" hidden="0" name="aeroway"/>
      <column width="-1" type="field" hidden="0" name="amenity"/>
      <column width="-1" type="field" hidden="0" name="admin_level"/>
      <column width="-1" type="field" hidden="0" name="barrier"/>
      <column width="-1" type="field" hidden="0" name="boundary"/>
      <column width="-1" type="field" hidden="0" name="building"/>
      <column width="-1" type="field" hidden="0" name="craft"/>
      <column width="-1" type="field" hidden="0" name="geological"/>
      <column width="-1" type="field" hidden="0" name="historic"/>
      <column width="-1" type="field" hidden="0" name="land_area"/>
      <column width="-1" type="field" hidden="0" name="landuse"/>
      <column width="-1" type="field" hidden="0" name="leisure"/>
      <column width="-1" type="field" hidden="0" name="man_made"/>
      <column width="-1" type="field" hidden="0" name="military"/>
      <column width="-1" type="field" hidden="0" name="natural"/>
      <column width="-1" type="field" hidden="0" name="office"/>
      <column width="-1" type="field" hidden="0" name="place"/>
      <column width="-1" type="field" hidden="0" name="shop"/>
      <column width="-1" type="field" hidden="0" name="sport"/>
      <column width="-1" type="field" hidden="0" name="tourism"/>
      <column width="-1" type="field" hidden="0" name="other_tags"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="admin_level"/>
    <field editable="1" name="aeroway"/>
    <field editable="1" name="amenity"/>
    <field editable="1" name="barrier"/>
    <field editable="1" name="boundary"/>
    <field editable="1" name="building"/>
    <field editable="1" name="craft"/>
    <field editable="1" name="geological"/>
    <field editable="1" name="historic"/>
    <field editable="1" name="land_area"/>
    <field editable="1" name="landuse"/>
    <field editable="1" name="leisure"/>
    <field editable="1" name="man_made"/>
    <field editable="1" name="military"/>
    <field editable="1" name="name"/>
    <field editable="1" name="natural"/>
    <field editable="1" name="office"/>
    <field editable="1" name="ogc_fid"/>
    <field editable="1" name="osm_id"/>
    <field editable="1" name="osm_way_id"/>
    <field editable="1" name="other_tags"/>
    <field editable="1" name="place"/>
    <field editable="1" name="shop"/>
    <field editable="1" name="sport"/>
    <field editable="1" name="tourism"/>
    <field editable="1" name="type"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="admin_level"/>
    <field labelOnTop="0" name="aeroway"/>
    <field labelOnTop="0" name="amenity"/>
    <field labelOnTop="0" name="barrier"/>
    <field labelOnTop="0" name="boundary"/>
    <field labelOnTop="0" name="building"/>
    <field labelOnTop="0" name="craft"/>
    <field labelOnTop="0" name="geological"/>
    <field labelOnTop="0" name="historic"/>
    <field labelOnTop="0" name="land_area"/>
    <field labelOnTop="0" name="landuse"/>
    <field labelOnTop="0" name="leisure"/>
    <field labelOnTop="0" name="man_made"/>
    <field labelOnTop="0" name="military"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="natural"/>
    <field labelOnTop="0" name="office"/>
    <field labelOnTop="0" name="ogc_fid"/>
    <field labelOnTop="0" name="osm_id"/>
    <field labelOnTop="0" name="osm_way_id"/>
    <field labelOnTop="0" name="other_tags"/>
    <field labelOnTop="0" name="place"/>
    <field labelOnTop="0" name="shop"/>
    <field labelOnTop="0" name="sport"/>
    <field labelOnTop="0" name="tourism"/>
    <field labelOnTop="0" name="type"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="admin_level"/>
    <field reuseLastValue="0" name="aeroway"/>
    <field reuseLastValue="0" name="amenity"/>
    <field reuseLastValue="0" name="barrier"/>
    <field reuseLastValue="0" name="boundary"/>
    <field reuseLastValue="0" name="building"/>
    <field reuseLastValue="0" name="craft"/>
    <field reuseLastValue="0" name="geological"/>
    <field reuseLastValue="0" name="historic"/>
    <field reuseLastValue="0" name="land_area"/>
    <field reuseLastValue="0" name="landuse"/>
    <field reuseLastValue="0" name="leisure"/>
    <field reuseLastValue="0" name="man_made"/>
    <field reuseLastValue="0" name="military"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="natural"/>
    <field reuseLastValue="0" name="office"/>
    <field reuseLastValue="0" name="ogc_fid"/>
    <field reuseLastValue="0" name="osm_id"/>
    <field reuseLastValue="0" name="osm_way_id"/>
    <field reuseLastValue="0" name="other_tags"/>
    <field reuseLastValue="0" name="place"/>
    <field reuseLastValue="0" name="shop"/>
    <field reuseLastValue="0" name="sport"/>
    <field reuseLastValue="0" name="tourism"/>
    <field reuseLastValue="0" name="type"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
