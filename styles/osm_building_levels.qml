<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" simplifyDrawingHints="1" maxScale="0" simplifyMaxScale="1" symbologyReferenceScale="-1" simplifyLocal="1" simplifyAlgorithm="0" readOnly="0" styleCategories="AllStyleCategories" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" version="3.22.16-Białowieża">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal accumulate="0" mode="0" fixedDuration="0" durationField="" startField="" startExpression="" limitMode="0" endExpression="" enabled="0" endField="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="1" forceraster="0" symbollevels="0" referencescale="-1" type="RuleRenderer">
    <rules key="{b9b84d1f-37a2-446e-aded-68de9a63934d}">
      <rule filter="&quot;building&quot; IS NOT NULL" key="{0a1515ff-8b3c-4bb2-86ff-4f3e86d51205}" symbol="0"/>
    </rules>
    <symbols>
      <symbol alpha="1" name="0" force_rhr="0" type="fill" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="2" enabled="1" locked="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" value="Fill" type="QString"/>
            <Option name="geometryModifier" value="order_parts(   extrude(    segments_to_lines( $geometry ),    cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),    sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height )  ),  'distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))',  False)" type="QString"/>
            <Option name="units" value="MapUnit" type="QString"/>
          </Option>
          <prop k="SymbolType" v="Fill"/>
          <prop k="geometryModifier" v="order_parts(   extrude(    segments_to_lines( $geometry ),    cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),    sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height )  ),  'distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))',  False)"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@0@0" force_rhr="0" type="fill" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" locked="0" class="GradientFill">
              <Option type="Map">
                <Option name="angle" value="0" type="QString"/>
                <Option name="color" value="77,77,77,128" type="QString"/>
                <Option name="color1" value="69,116,40,255" type="QString"/>
                <Option name="color2" value="188,220,60,255" type="QString"/>
                <Option name="color_type" value="0" type="QString"/>
                <Option name="coordinate_mode" value="0" type="QString"/>
                <Option name="discrete" value="0" type="QString"/>
                <Option name="gradient_color2" value="77,77,77,0" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="rampType" value="gradient" type="QString"/>
                <Option name="reference_point1" value="0.5,0" type="QString"/>
                <Option name="reference_point1_iscentroid" value="0" type="QString"/>
                <Option name="reference_point2" value="0.5,1" type="QString"/>
                <Option name="reference_point2_iscentroid" value="0" type="QString"/>
                <Option name="spread" value="0" type="QString"/>
                <Option name="type" value="0" type="QString"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="color" v="77,77,77,128"/>
              <prop k="color1" v="69,116,40,255"/>
              <prop k="color2" v="188,220,60,255"/>
              <prop k="color_type" v="0"/>
              <prop k="coordinate_mode" v="0"/>
              <prop k="discrete" v="0"/>
              <prop k="gradient_color2" v="77,77,77,0"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="rampType" v="gradient"/>
              <prop k="reference_point1" v="0.5,0"/>
              <prop k="reference_point1_iscentroid" v="0"/>
              <prop k="reference_point2" v="0.5,1"/>
              <prop k="reference_point2_iscentroid" v="0"/>
              <prop k="spread" v="0"/>
              <prop k="type" v="0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="2" enabled="1" locked="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" value="Fill" type="QString"/>
            <Option name="geometryModifier" value="translate(  $geometry,  cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),  sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ))" type="QString"/>
            <Option name="units" value="MapUnit" type="QString"/>
          </Option>
          <prop k="SymbolType" v="Fill"/>
          <prop k="geometryModifier" v="translate(  $geometry,  cos( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ),  sin( radians( eval( @qgis_25d_angle ) ) ) * eval( @qgis_25d_height ))"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" name="@0@1" force_rhr="0" type="fill" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" locked="0" class="SimpleFill">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="color" value="255,255,255,255" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="outline_color" value="77,77,77,255" type="QString"/>
                <Option name="outline_style" value="solid" type="QString"/>
                <Option name="outline_width" value="0.1" type="QString"/>
                <Option name="outline_width_unit" value="MM" type="QString"/>
                <Option name="style" value="solid" type="QString"/>
              </Option>
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="255,255,255,255"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="77,77,77,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0.1"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="style" v="solid"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <effect enabled="1" type="effectStack">
      <effect type="dropShadow">
        <Option type="Map">
          <Option name="blend_mode" value="13" type="QString"/>
          <Option name="blur_level" value="2.645" type="QString"/>
          <Option name="blur_unit" value="MM" type="QString"/>
          <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="color" value="0,0,0,255" type="QString"/>
          <Option name="draw_mode" value="2" type="QString"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="offset_angle" value="135" type="QString"/>
          <Option name="offset_distance" value="2" type="QString"/>
          <Option name="offset_unit" value="MM" type="QString"/>
          <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="opacity" value="1" type="QString"/>
        </Option>
        <prop k="blend_mode" v="13"/>
        <prop k="blur_level" v="2.645"/>
        <prop k="blur_unit" v="MM"/>
        <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="color" v="0,0,0,255"/>
        <prop k="draw_mode" v="2"/>
        <prop k="enabled" v="0"/>
        <prop k="offset_angle" v="135"/>
        <prop k="offset_distance" v="2"/>
        <prop k="offset_unit" v="MM"/>
        <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="opacity" v="1"/>
      </effect>
      <effect type="outerGlow">
        <Option type="Map">
          <Option name="blend_mode" value="0" type="QString"/>
          <Option name="blur_level" value="2.645" type="QString"/>
          <Option name="blur_unit" value="MM" type="QString"/>
          <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="color1" value="69,116,40,255" type="QString"/>
          <Option name="color2" value="188,220,60,255" type="QString"/>
          <Option name="color_type" value="0" type="QString"/>
          <Option name="discrete" value="0" type="QString"/>
          <Option name="draw_mode" value="2" type="QString"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="opacity" value="0.5" type="QString"/>
          <Option name="rampType" value="gradient" type="QString"/>
          <Option name="single_color" value="255,255,255,255" type="QString"/>
          <Option name="spread" value="2" type="QString"/>
          <Option name="spread_unit" value="MM" type="QString"/>
          <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
        </Option>
        <prop k="blend_mode" v="0"/>
        <prop k="blur_level" v="2.645"/>
        <prop k="blur_unit" v="MM"/>
        <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="color1" v="69,116,40,255"/>
        <prop k="color2" v="188,220,60,255"/>
        <prop k="color_type" v="0"/>
        <prop k="discrete" v="0"/>
        <prop k="draw_mode" v="2"/>
        <prop k="enabled" v="0"/>
        <prop k="opacity" v="0.5"/>
        <prop k="rampType" v="gradient"/>
        <prop k="single_color" v="255,255,255,255"/>
        <prop k="spread" v="2"/>
        <prop k="spread_unit" v="MM"/>
        <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
      </effect>
      <effect type="transform">
        <Option type="Map">
          <Option name="draw_mode" value="2" type="QString"/>
          <Option name="enabled" value="1" type="QString"/>
          <Option name="reflect_x" value="0" type="QString"/>
          <Option name="reflect_y" value="0" type="QString"/>
          <Option name="rotation" value="45" type="QString"/>
          <Option name="scale_x" value="1" type="QString"/>
          <Option name="scale_y" value="1" type="QString"/>
          <Option name="shear_x" value="-0.15" type="QString"/>
          <Option name="shear_y" value="-0.15" type="QString"/>
          <Option name="translate_unit" value="MM" type="QString"/>
          <Option name="translate_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="translate_x" value="0" type="QString"/>
          <Option name="translate_y" value="0" type="QString"/>
        </Option>
        <prop k="draw_mode" v="2"/>
        <prop k="enabled" v="1"/>
        <prop k="reflect_x" v="0"/>
        <prop k="reflect_y" v="0"/>
        <prop k="rotation" v="45"/>
        <prop k="scale_x" v="1"/>
        <prop k="scale_y" v="1"/>
        <prop k="shear_x" v="-0.15"/>
        <prop k="shear_y" v="-0.15"/>
        <prop k="translate_unit" v="MM"/>
        <prop k="translate_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="translate_x" v="0"/>
        <prop k="translate_y" v="0"/>
      </effect>
      <effect type="innerShadow">
        <Option type="Map">
          <Option name="blend_mode" value="13" type="QString"/>
          <Option name="blur_level" value="2.645" type="QString"/>
          <Option name="blur_unit" value="MM" type="QString"/>
          <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="color" value="0,0,0,255" type="QString"/>
          <Option name="draw_mode" value="2" type="QString"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="offset_angle" value="135" type="QString"/>
          <Option name="offset_distance" value="2" type="QString"/>
          <Option name="offset_unit" value="MM" type="QString"/>
          <Option name="offset_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="opacity" value="1" type="QString"/>
        </Option>
        <prop k="blend_mode" v="13"/>
        <prop k="blur_level" v="2.645"/>
        <prop k="blur_unit" v="MM"/>
        <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="color" v="0,0,0,255"/>
        <prop k="draw_mode" v="2"/>
        <prop k="enabled" v="0"/>
        <prop k="offset_angle" v="135"/>
        <prop k="offset_distance" v="2"/>
        <prop k="offset_unit" v="MM"/>
        <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="opacity" v="1"/>
      </effect>
      <effect type="innerGlow">
        <Option type="Map">
          <Option name="blend_mode" value="0" type="QString"/>
          <Option name="blur_level" value="2.645" type="QString"/>
          <Option name="blur_unit" value="MM" type="QString"/>
          <Option name="blur_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="color1" value="69,116,40,255" type="QString"/>
          <Option name="color2" value="188,220,60,255" type="QString"/>
          <Option name="color_type" value="0" type="QString"/>
          <Option name="discrete" value="0" type="QString"/>
          <Option name="draw_mode" value="2" type="QString"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="opacity" value="0.5" type="QString"/>
          <Option name="rampType" value="gradient" type="QString"/>
          <Option name="single_color" value="255,255,255,255" type="QString"/>
          <Option name="spread" value="2" type="QString"/>
          <Option name="spread_unit" value="MM" type="QString"/>
          <Option name="spread_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
        </Option>
        <prop k="blend_mode" v="0"/>
        <prop k="blur_level" v="2.645"/>
        <prop k="blur_unit" v="MM"/>
        <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
        <prop k="color1" v="69,116,40,255"/>
        <prop k="color2" v="188,220,60,255"/>
        <prop k="color_type" v="0"/>
        <prop k="discrete" v="0"/>
        <prop k="draw_mode" v="2"/>
        <prop k="enabled" v="0"/>
        <prop k="opacity" v="0.5"/>
        <prop k="rampType" v="gradient"/>
        <prop k="single_color" v="255,255,255,255"/>
        <prop k="spread" v="2"/>
        <prop k="spread_unit" v="MM"/>
        <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
      </effect>
    </effect>
    <orderby>
      <orderByClause asc="0" nullsFirst="1">distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{9fa02d5b-df31-49dd-948f-eaf901378e82}"/>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option name="embeddedWidgets/count" value="0" type="int"/>
      <Option name="variableNames" type="StringList">
        <Option value="qgis_25d_angle" type="QString"/>
        <Option value="qgis_25d_height" type="QString"/>
      </Option>
      <Option name="variableValues" type="StringList">
        <Option value="135" type="QString"/>
        <Option value="replace(regexp_substr(&quot;other_tags&quot;,'(building:levels&quot;=>&quot;[0-9]+)'),'building:levels&quot;=>&quot;','')*10" type="QString"/>
      </Option>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory scaleDependency="Area" scaleBasedVisibility="0" barWidth="5" sizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" maxScaleDenominator="1e+08" penColor="#000000" rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" enabled="0" minScaleDenominator="0" width="15" opacity="1" diagramOrientation="Up" penAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0" minimumSize="0" height="15" labelPlacementMethod="XHeight" showAxis="1" direction="0" spacing="5" penWidth="0" lineSizeType="MM" spacingUnit="MM" sizeType="MM">
      <fontProperties style="" description="Sans Serif,9,-1,5,50,0,0,0,0,0"/>
      <attribute colorOpacity="1" label="" color="#000000" field=""/>
      <axisSymbol>
        <symbol alpha="1" name="" force_rhr="0" type="line" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" enabled="1" locked="0" class="SimpleLine">
            <Option type="Map">
              <Option name="align_dash_pattern" value="0" type="QString"/>
              <Option name="capstyle" value="square" type="QString"/>
              <Option name="customdash" value="5;2" type="QString"/>
              <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="customdash_unit" value="MM" type="QString"/>
              <Option name="dash_pattern_offset" value="0" type="QString"/>
              <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
              <Option name="draw_inside_polygon" value="0" type="QString"/>
              <Option name="joinstyle" value="bevel" type="QString"/>
              <Option name="line_color" value="35,35,35,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.26" type="QString"/>
              <Option name="line_width_unit" value="MM" type="QString"/>
              <Option name="offset" value="0" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="trim_distance_end" value="0" type="QString"/>
              <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="trim_distance_end_unit" value="MM" type="QString"/>
              <Option name="trim_distance_start" value="0" type="QString"/>
              <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="trim_distance_start_unit" value="MM" type="QString"/>
              <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
              <Option name="use_custom_dash" value="0" type="QString"/>
              <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="trim_distance_end" v="0"/>
            <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_end_unit" v="MM"/>
            <prop k="trim_distance_start" v="0"/>
            <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_start_unit" v="MM"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" placement="1" showAll="1" linePlacementFlags="18" zIndex="0" dist="0" priority="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" value="0" type="double"/>
        <Option name="allowedGapsEnabled" value="false" type="bool"/>
        <Option name="allowedGapsLayer" value="" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend showLabelLegend="0" type="default-vector"/>
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
    <default expression="" field="ogc_fid" applyOnUpdate="0"/>
    <default expression="" field="osm_id" applyOnUpdate="0"/>
    <default expression="" field="osm_way_id" applyOnUpdate="0"/>
    <default expression="" field="name" applyOnUpdate="0"/>
    <default expression="" field="type" applyOnUpdate="0"/>
    <default expression="" field="aeroway" applyOnUpdate="0"/>
    <default expression="" field="amenity" applyOnUpdate="0"/>
    <default expression="" field="admin_level" applyOnUpdate="0"/>
    <default expression="" field="barrier" applyOnUpdate="0"/>
    <default expression="" field="boundary" applyOnUpdate="0"/>
    <default expression="" field="building" applyOnUpdate="0"/>
    <default expression="" field="craft" applyOnUpdate="0"/>
    <default expression="" field="geological" applyOnUpdate="0"/>
    <default expression="" field="historic" applyOnUpdate="0"/>
    <default expression="" field="land_area" applyOnUpdate="0"/>
    <default expression="" field="landuse" applyOnUpdate="0"/>
    <default expression="" field="leisure" applyOnUpdate="0"/>
    <default expression="" field="man_made" applyOnUpdate="0"/>
    <default expression="" field="military" applyOnUpdate="0"/>
    <default expression="" field="natural" applyOnUpdate="0"/>
    <default expression="" field="office" applyOnUpdate="0"/>
    <default expression="" field="place" applyOnUpdate="0"/>
    <default expression="" field="shop" applyOnUpdate="0"/>
    <default expression="" field="sport" applyOnUpdate="0"/>
    <default expression="" field="tourism" applyOnUpdate="0"/>
    <default expression="" field="other_tags" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="ogc_fid"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="osm_id"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="osm_way_id"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="name"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="type"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="aeroway"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="amenity"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="admin_level"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="barrier"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="boundary"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="building"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="craft"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="geological"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="historic"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="land_area"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="landuse"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="leisure"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="man_made"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="military"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="natural"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="office"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="place"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="shop"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="sport"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="tourism"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0" field="other_tags"/>
  </constraints>
  <constraintExpressions>
    <constraint field="ogc_fid" desc="" exp=""/>
    <constraint field="osm_id" desc="" exp=""/>
    <constraint field="osm_way_id" desc="" exp=""/>
    <constraint field="name" desc="" exp=""/>
    <constraint field="type" desc="" exp=""/>
    <constraint field="aeroway" desc="" exp=""/>
    <constraint field="amenity" desc="" exp=""/>
    <constraint field="admin_level" desc="" exp=""/>
    <constraint field="barrier" desc="" exp=""/>
    <constraint field="boundary" desc="" exp=""/>
    <constraint field="building" desc="" exp=""/>
    <constraint field="craft" desc="" exp=""/>
    <constraint field="geological" desc="" exp=""/>
    <constraint field="historic" desc="" exp=""/>
    <constraint field="land_area" desc="" exp=""/>
    <constraint field="landuse" desc="" exp=""/>
    <constraint field="leisure" desc="" exp=""/>
    <constraint field="man_made" desc="" exp=""/>
    <constraint field="military" desc="" exp=""/>
    <constraint field="natural" desc="" exp=""/>
    <constraint field="office" desc="" exp=""/>
    <constraint field="place" desc="" exp=""/>
    <constraint field="shop" desc="" exp=""/>
    <constraint field="sport" desc="" exp=""/>
    <constraint field="tourism" desc="" exp=""/>
    <constraint field="other_tags" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column hidden="0" width="-1" name="ogc_fid" type="field"/>
      <column hidden="0" width="-1" name="osm_id" type="field"/>
      <column hidden="0" width="-1" name="osm_way_id" type="field"/>
      <column hidden="0" width="-1" name="name" type="field"/>
      <column hidden="0" width="-1" name="type" type="field"/>
      <column hidden="0" width="-1" name="aeroway" type="field"/>
      <column hidden="0" width="-1" name="amenity" type="field"/>
      <column hidden="0" width="-1" name="admin_level" type="field"/>
      <column hidden="0" width="-1" name="barrier" type="field"/>
      <column hidden="0" width="-1" name="boundary" type="field"/>
      <column hidden="0" width="-1" name="building" type="field"/>
      <column hidden="0" width="-1" name="craft" type="field"/>
      <column hidden="0" width="-1" name="geological" type="field"/>
      <column hidden="0" width="-1" name="historic" type="field"/>
      <column hidden="0" width="-1" name="land_area" type="field"/>
      <column hidden="0" width="-1" name="landuse" type="field"/>
      <column hidden="0" width="-1" name="leisure" type="field"/>
      <column hidden="0" width="-1" name="man_made" type="field"/>
      <column hidden="0" width="-1" name="military" type="field"/>
      <column hidden="0" width="-1" name="natural" type="field"/>
      <column hidden="0" width="-1" name="office" type="field"/>
      <column hidden="0" width="-1" name="place" type="field"/>
      <column hidden="0" width="-1" name="shop" type="field"/>
      <column hidden="0" width="-1" name="sport" type="field"/>
      <column hidden="0" width="-1" name="tourism" type="field"/>
      <column hidden="0" width="-1" name="other_tags" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
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
