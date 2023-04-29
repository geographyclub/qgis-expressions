<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis symbologyReferenceScale="-1" maxScale="0" simplifyLocal="1" version="3.22.16-Białowieża" styleCategories="AllStyleCategories" simplifyDrawingHints="1" labelsEnabled="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" simplifyDrawingTol="1" minScale="100000000" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal durationUnit="min" startField="" limitMode="0" fixedDuration="0" accumulate="0" endExpression="" endField="" mode="0" durationField="" enabled="0" startExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="RuleRenderer" referencescale="-1" forceraster="0" symbollevels="0" enableorderby="1">
    <rules key="{b9b84d1f-37a2-446e-aded-68de9a63934d}">
      <rule key="{0a1515ff-8b3c-4bb2-86ff-4f3e86d51205}" filter="&quot;building&quot; IS NOT NULL AND x($geometry) > (x(@map_extent_center) - (@map_extent_width/4)) AND&#xa;x($geometry) &lt; (x(@map_extent_center) + (@map_extent_width/4)) AND&#xa;y($geometry) > (y(@map_extent_center) - (@map_extent_height/4)) AND&#xa;y($geometry) &lt; (y(@map_extent_center) + (@map_extent_height/4))&#xa;" symbol="0"/>
    </rules>
    <symbols>
      <symbol type="fill" alpha="1" name="0" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="2" class="GeometryGenerator" enabled="1">
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
          <symbol type="fill" alpha="1" name="@0@0" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="GradientFill" enabled="1">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="77,77,77,128" name="color"/>
                <Option type="QString" value="69,116,40,255" name="color1"/>
                <Option type="QString" value="188,220,60,255" name="color2"/>
                <Option type="QString" value="0" name="color_type"/>
                <Option type="QString" value="0" name="coordinate_mode"/>
                <Option type="QString" value="0" name="discrete"/>
                <Option type="QString" value="77,77,77,0" name="gradient_color2"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="gradient" name="rampType"/>
                <Option type="QString" value="0.5,0" name="reference_point1"/>
                <Option type="QString" value="0" name="reference_point1_iscentroid"/>
                <Option type="QString" value="0.5,1" name="reference_point2"/>
                <Option type="QString" value="0" name="reference_point2_iscentroid"/>
                <Option type="QString" value="0" name="spread"/>
                <Option type="QString" value="0" name="type"/>
              </Option>
              <prop v="0" k="angle"/>
              <prop v="77,77,77,128" k="color"/>
              <prop v="69,116,40,255" k="color1"/>
              <prop v="188,220,60,255" k="color2"/>
              <prop v="0" k="color_type"/>
              <prop v="0" k="coordinate_mode"/>
              <prop v="0" k="discrete"/>
              <prop v="77,77,77,0" k="gradient_color2"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="gradient" k="rampType"/>
              <prop v="0.5,0" k="reference_point1"/>
              <prop v="0" k="reference_point1_iscentroid"/>
              <prop v="0.5,1" k="reference_point2"/>
              <prop v="0" k="reference_point2_iscentroid"/>
              <prop v="0" k="spread"/>
              <prop v="0" k="type"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="2" class="GeometryGenerator" enabled="1">
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
          <symbol type="fill" alpha="1" name="@0@1" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                <Option type="QString" value="255,255,255,255" name="color"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="77,77,77,255" name="outline_color"/>
                <Option type="QString" value="solid" name="outline_style"/>
                <Option type="QString" value="0.1" name="outline_width"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="solid" name="style"/>
              </Option>
              <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
              <prop v="255,255,255,255" k="color"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="77,77,77,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0.1" k="outline_width"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="solid" k="style"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
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
          <Option type="QString" value="-0.15" name="shear_x"/>
          <Option type="QString" value="-0.15" name="shear_y"/>
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
        <prop v="-0.15" k="shear_x"/>
        <prop v="-0.15" k="shear_y"/>
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
  <labeling type="rule-based">
    <rules key="{bfd617d3-9086-41e4-aca7-edef7fd3b016}"/>
  </labeling>
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
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" lineSizeScale="3x:0,0,0,0,0,0" rotationOffset="270" sizeType="MM" minScaleDenominator="0" showAxis="1" minimumSize="0" direction="0" spacing="5" spacingUnit="MM" maxScaleDenominator="1e+08" lineSizeType="MM" scaleDependency="Area" scaleBasedVisibility="0" diagramOrientation="Up" barWidth="5" width="15" height="15" penColor="#000000" spacingUnitScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" opacity="1" penWidth="0" penAlpha="255" backgroundAlpha="255" enabled="0" labelPlacementMethod="XHeight">
      <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" color="#000000" colorOpacity="1" field=""/>
      <axisSymbol>
        <symbol type="line" alpha="1" name="" force_rhr="0" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" pass="0" class="SimpleLine" enabled="1">
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
  <DiagramLayerSettings zIndex="0" obstacle="0" placement="1" dist="0" linePlacementFlags="18" priority="0" showAll="1">
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
    <field name="ogc_fid" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="osm_id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="osm_way_id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="aeroway" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="amenity" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="admin_level" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="barrier" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="boundary" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="building" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="craft" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geological" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="historic" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="land_area" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="landuse" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="leisure" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="man_made" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="military" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="natural" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="office" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="place" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="shop" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sport" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tourism" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="other_tags" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="ogc_fid"/>
    <alias name="" index="1" field="osm_id"/>
    <alias name="" index="2" field="osm_way_id"/>
    <alias name="" index="3" field="name"/>
    <alias name="" index="4" field="type"/>
    <alias name="" index="5" field="aeroway"/>
    <alias name="" index="6" field="amenity"/>
    <alias name="" index="7" field="admin_level"/>
    <alias name="" index="8" field="barrier"/>
    <alias name="" index="9" field="boundary"/>
    <alias name="" index="10" field="building"/>
    <alias name="" index="11" field="craft"/>
    <alias name="" index="12" field="geological"/>
    <alias name="" index="13" field="historic"/>
    <alias name="" index="14" field="land_area"/>
    <alias name="" index="15" field="landuse"/>
    <alias name="" index="16" field="leisure"/>
    <alias name="" index="17" field="man_made"/>
    <alias name="" index="18" field="military"/>
    <alias name="" index="19" field="natural"/>
    <alias name="" index="20" field="office"/>
    <alias name="" index="21" field="place"/>
    <alias name="" index="22" field="shop"/>
    <alias name="" index="23" field="sport"/>
    <alias name="" index="24" field="tourism"/>
    <alias name="" index="25" field="other_tags"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="ogc_fid"/>
    <default expression="" applyOnUpdate="0" field="osm_id"/>
    <default expression="" applyOnUpdate="0" field="osm_way_id"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="type"/>
    <default expression="" applyOnUpdate="0" field="aeroway"/>
    <default expression="" applyOnUpdate="0" field="amenity"/>
    <default expression="" applyOnUpdate="0" field="admin_level"/>
    <default expression="" applyOnUpdate="0" field="barrier"/>
    <default expression="" applyOnUpdate="0" field="boundary"/>
    <default expression="" applyOnUpdate="0" field="building"/>
    <default expression="" applyOnUpdate="0" field="craft"/>
    <default expression="" applyOnUpdate="0" field="geological"/>
    <default expression="" applyOnUpdate="0" field="historic"/>
    <default expression="" applyOnUpdate="0" field="land_area"/>
    <default expression="" applyOnUpdate="0" field="landuse"/>
    <default expression="" applyOnUpdate="0" field="leisure"/>
    <default expression="" applyOnUpdate="0" field="man_made"/>
    <default expression="" applyOnUpdate="0" field="military"/>
    <default expression="" applyOnUpdate="0" field="natural"/>
    <default expression="" applyOnUpdate="0" field="office"/>
    <default expression="" applyOnUpdate="0" field="place"/>
    <default expression="" applyOnUpdate="0" field="shop"/>
    <default expression="" applyOnUpdate="0" field="sport"/>
    <default expression="" applyOnUpdate="0" field="tourism"/>
    <default expression="" applyOnUpdate="0" field="other_tags"/>
  </defaults>
  <constraints>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="ogc_fid"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="osm_id"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="osm_way_id"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="name"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="aeroway"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="amenity"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="admin_level"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="barrier"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="boundary"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="building"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="craft"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="geological"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="historic"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="land_area"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="landuse"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="leisure"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="man_made"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="military"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="natural"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="office"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="place"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="shop"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="sport"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="tourism"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="other_tags"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="ogc_fid"/>
    <constraint desc="" exp="" field="osm_id"/>
    <constraint desc="" exp="" field="osm_way_id"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="type"/>
    <constraint desc="" exp="" field="aeroway"/>
    <constraint desc="" exp="" field="amenity"/>
    <constraint desc="" exp="" field="admin_level"/>
    <constraint desc="" exp="" field="barrier"/>
    <constraint desc="" exp="" field="boundary"/>
    <constraint desc="" exp="" field="building"/>
    <constraint desc="" exp="" field="craft"/>
    <constraint desc="" exp="" field="geological"/>
    <constraint desc="" exp="" field="historic"/>
    <constraint desc="" exp="" field="land_area"/>
    <constraint desc="" exp="" field="landuse"/>
    <constraint desc="" exp="" field="leisure"/>
    <constraint desc="" exp="" field="man_made"/>
    <constraint desc="" exp="" field="military"/>
    <constraint desc="" exp="" field="natural"/>
    <constraint desc="" exp="" field="office"/>
    <constraint desc="" exp="" field="place"/>
    <constraint desc="" exp="" field="shop"/>
    <constraint desc="" exp="" field="sport"/>
    <constraint desc="" exp="" field="tourism"/>
    <constraint desc="" exp="" field="other_tags"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" name="ogc_fid" hidden="0" width="-1"/>
      <column type="field" name="osm_id" hidden="0" width="-1"/>
      <column type="field" name="osm_way_id" hidden="0" width="-1"/>
      <column type="field" name="name" hidden="0" width="-1"/>
      <column type="field" name="type" hidden="0" width="-1"/>
      <column type="field" name="aeroway" hidden="0" width="-1"/>
      <column type="field" name="amenity" hidden="0" width="-1"/>
      <column type="field" name="admin_level" hidden="0" width="-1"/>
      <column type="field" name="barrier" hidden="0" width="-1"/>
      <column type="field" name="boundary" hidden="0" width="-1"/>
      <column type="field" name="building" hidden="0" width="-1"/>
      <column type="field" name="craft" hidden="0" width="-1"/>
      <column type="field" name="geological" hidden="0" width="-1"/>
      <column type="field" name="historic" hidden="0" width="-1"/>
      <column type="field" name="land_area" hidden="0" width="-1"/>
      <column type="field" name="landuse" hidden="0" width="-1"/>
      <column type="field" name="leisure" hidden="0" width="-1"/>
      <column type="field" name="man_made" hidden="0" width="-1"/>
      <column type="field" name="military" hidden="0" width="-1"/>
      <column type="field" name="natural" hidden="0" width="-1"/>
      <column type="field" name="office" hidden="0" width="-1"/>
      <column type="field" name="place" hidden="0" width="-1"/>
      <column type="field" name="shop" hidden="0" width="-1"/>
      <column type="field" name="sport" hidden="0" width="-1"/>
      <column type="field" name="tourism" hidden="0" width="-1"/>
      <column type="field" name="other_tags" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
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
    <field name="admin_level" editable="1"/>
    <field name="aeroway" editable="1"/>
    <field name="amenity" editable="1"/>
    <field name="barrier" editable="1"/>
    <field name="boundary" editable="1"/>
    <field name="building" editable="1"/>
    <field name="craft" editable="1"/>
    <field name="geological" editable="1"/>
    <field name="historic" editable="1"/>
    <field name="land_area" editable="1"/>
    <field name="landuse" editable="1"/>
    <field name="leisure" editable="1"/>
    <field name="man_made" editable="1"/>
    <field name="military" editable="1"/>
    <field name="name" editable="1"/>
    <field name="natural" editable="1"/>
    <field name="office" editable="1"/>
    <field name="ogc_fid" editable="1"/>
    <field name="osm_id" editable="1"/>
    <field name="osm_way_id" editable="1"/>
    <field name="other_tags" editable="1"/>
    <field name="place" editable="1"/>
    <field name="shop" editable="1"/>
    <field name="sport" editable="1"/>
    <field name="tourism" editable="1"/>
    <field name="type" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="admin_level" labelOnTop="0"/>
    <field name="aeroway" labelOnTop="0"/>
    <field name="amenity" labelOnTop="0"/>
    <field name="barrier" labelOnTop="0"/>
    <field name="boundary" labelOnTop="0"/>
    <field name="building" labelOnTop="0"/>
    <field name="craft" labelOnTop="0"/>
    <field name="geological" labelOnTop="0"/>
    <field name="historic" labelOnTop="0"/>
    <field name="land_area" labelOnTop="0"/>
    <field name="landuse" labelOnTop="0"/>
    <field name="leisure" labelOnTop="0"/>
    <field name="man_made" labelOnTop="0"/>
    <field name="military" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="natural" labelOnTop="0"/>
    <field name="office" labelOnTop="0"/>
    <field name="ogc_fid" labelOnTop="0"/>
    <field name="osm_id" labelOnTop="0"/>
    <field name="osm_way_id" labelOnTop="0"/>
    <field name="other_tags" labelOnTop="0"/>
    <field name="place" labelOnTop="0"/>
    <field name="shop" labelOnTop="0"/>
    <field name="sport" labelOnTop="0"/>
    <field name="tourism" labelOnTop="0"/>
    <field name="type" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="admin_level" reuseLastValue="0"/>
    <field name="aeroway" reuseLastValue="0"/>
    <field name="amenity" reuseLastValue="0"/>
    <field name="barrier" reuseLastValue="0"/>
    <field name="boundary" reuseLastValue="0"/>
    <field name="building" reuseLastValue="0"/>
    <field name="craft" reuseLastValue="0"/>
    <field name="geological" reuseLastValue="0"/>
    <field name="historic" reuseLastValue="0"/>
    <field name="land_area" reuseLastValue="0"/>
    <field name="landuse" reuseLastValue="0"/>
    <field name="leisure" reuseLastValue="0"/>
    <field name="man_made" reuseLastValue="0"/>
    <field name="military" reuseLastValue="0"/>
    <field name="name" reuseLastValue="0"/>
    <field name="natural" reuseLastValue="0"/>
    <field name="office" reuseLastValue="0"/>
    <field name="ogc_fid" reuseLastValue="0"/>
    <field name="osm_id" reuseLastValue="0"/>
    <field name="osm_way_id" reuseLastValue="0"/>
    <field name="other_tags" reuseLastValue="0"/>
    <field name="place" reuseLastValue="0"/>
    <field name="shop" reuseLastValue="0"/>
    <field name="sport" reuseLastValue="0"/>
    <field name="tourism" reuseLastValue="0"/>
    <field name="type" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
