<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.16-Białowieża" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" readOnly="0" simplifyMaxScale="1" simplifyDrawingTol="1" simplifyAlgorithm="0" maxScale="0" minScale="100000000" labelsEnabled="0" symbologyReferenceScale="-1" simplifyDrawingHints="1" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal endField="" startExpression="" mode="0" fixedDuration="0" endExpression="" durationUnit="min" enabled="0" durationField="" limitMode="0" startField="" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 referencescale="-1" enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer">
    <rules key="{dde0ae6e-23e8-42e0-bc29-abaac5ce8814}">
      <rule key="{2e23e195-e6c1-4872-b119-c1570f90cf12}" symbol="0" filter="&quot;highway&quot; IN ('motorway','trunk','primary','secondary','tertiary')"/>
      <rule key="{140b1caf-49e7-42c3-b14f-130c171ff550}" symbol="1" filter="&quot;highway&quot; NOT IN ('motorway','trunk','primary','secondary','tertiary')"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="3" enabled="1" locked="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value="smooth(simplify_vw($geometry,1),1)"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <prop v="Line" k="SymbolType"/>
          <prop v="smooth(simplify_vw($geometry,1),1)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" name="@0@0" alpha="1" clip_to_extent="1" type="line">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="square"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="128,128,128,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="2.4"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <prop v="128,128,128,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="2.4" k="line_width"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="false"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk','primary') THEN 1.6&#xa;  WHEN &quot;highway&quot; IN ('secondary','tertiary') THEN 1.4&#xa;  ELSE 1.2&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="4" enabled="1" locked="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value="smooth(simplify_vw($geometry,1),1)"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <prop v="Line" k="SymbolType"/>
          <prop v="smooth(simplify_vw($geometry,1),1)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" name="@0@1" alpha="1" clip_to_extent="1" type="line">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="square"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="1.4"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <prop v="255,255,255,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="1.4" k="line_width"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="false"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk','primary') THEN 1.2&#xa;  WHEN &quot;highway&quot; IN ('secondary','tertiary') THEN 1&#xa;  ELSE 0.8&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="77,77,77,255"/>
                <Option name="line_style" type="QString" value="dash"/>
                <Option name="line_width" type="QString" value="0.2"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <prop v="0" k="align_dash_pattern"/>
              <prop v="flat" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="dash_pattern_offset"/>
              <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
              <prop v="MM" k="dash_pattern_offset_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="77,77,77,255" k="line_color"/>
              <prop v="dash" k="line_style"/>
              <prop v="0.2" k="line_width"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol force_rhr="0" name="1" alpha="1" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="1" enabled="1" locked="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value="smooth(simplify_vw($geometry,0),3)"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <prop v="Line" k="SymbolType"/>
          <prop v="smooth(simplify_vw($geometry,0),3)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" name="@1@0" alpha="1" clip_to_extent="1" type="line">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="square"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="1"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <prop v="255,255,255,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="1" k="line_width"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="false"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk','primary') THEN 2&#xa;  ELSE 1&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="square"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="77,77,77,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.3"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <prop v="77,77,77,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.3" k="line_width"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="false"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk') THEN ramp_color('Spectral',0)&#xa;  WHEN &quot;highway&quot; IN ('primary','secondary','tertiary') THEN ramp_color('Spectral',0.3)&#xa;  WHEN &quot;highway&quot; IN ('residential') THEN ramp_color('Spectral',0.6)&#xa;  ELSE ramp_color('Spectral',1)&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineStyle" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IS NOT NULL THEN 'solid'&#xa;  ELSE 'dash'&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="false"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk','primary') THEN 0.4&#xa;  WHEN &quot;highway&quot; IN ('secondary','tertiary') THEN 0.3&#xa;  ELSE 0.2&#xa;END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <effect enabled="0" type="effectStack">
      <effect type="dropShadow">
        <Option type="Map">
          <Option name="blend_mode" type="QString" value="0"/>
          <Option name="blur_level" type="QString" value="0.5"/>
          <Option name="blur_unit" type="QString" value="MM"/>
          <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="color" type="QString" value="51,51,51,255"/>
          <Option name="draw_mode" type="QString" value="2"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="offset_angle" type="QString" value="135"/>
          <Option name="offset_distance" type="QString" value="0.5"/>
          <Option name="offset_unit" type="QString" value="MM"/>
          <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="opacity" type="QString" value="0.5"/>
        </Option>
        <prop v="0" k="blend_mode"/>
        <prop v="0.5" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="51,51,51,255" k="color"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="135" k="offset_angle"/>
        <prop v="0.5" k="offset_distance"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
        <prop v="0.5" k="opacity"/>
      </effect>
      <effect type="outerGlow">
        <Option type="Map">
          <Option name="blend_mode" type="QString" value="0"/>
          <Option name="blur_level" type="QString" value="2.645"/>
          <Option name="blur_unit" type="QString" value="MM"/>
          <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="color1" type="QString" value="69,116,40,255"/>
          <Option name="color2" type="QString" value="188,220,60,255"/>
          <Option name="color_type" type="QString" value="0"/>
          <Option name="discrete" type="QString" value="0"/>
          <Option name="draw_mode" type="QString" value="2"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="opacity" type="QString" value="0.5"/>
          <Option name="rampType" type="QString" value="gradient"/>
          <Option name="single_color" type="QString" value="255,255,255,255"/>
          <Option name="spread" type="QString" value="2"/>
          <Option name="spread_unit" type="QString" value="MM"/>
          <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
          <Option name="draw_mode" type="QString" value="2"/>
          <Option name="enabled" type="QString" value="1"/>
          <Option name="reflect_x" type="QString" value="0"/>
          <Option name="reflect_y" type="QString" value="0"/>
          <Option name="rotation" type="QString" value="45"/>
          <Option name="scale_x" type="QString" value="1"/>
          <Option name="scale_y" type="QString" value="1"/>
          <Option name="shear_x" type="QString" value="-0.15"/>
          <Option name="shear_y" type="QString" value="-0.15"/>
          <Option name="translate_unit" type="QString" value="MM"/>
          <Option name="translate_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="translate_x" type="QString" value="0"/>
          <Option name="translate_y" type="QString" value="0"/>
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
          <Option name="blend_mode" type="QString" value="13"/>
          <Option name="blur_level" type="QString" value="2.645"/>
          <Option name="blur_unit" type="QString" value="MM"/>
          <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="color" type="QString" value="0,0,0,255"/>
          <Option name="draw_mode" type="QString" value="2"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="offset_angle" type="QString" value="135"/>
          <Option name="offset_distance" type="QString" value="2"/>
          <Option name="offset_unit" type="QString" value="MM"/>
          <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="opacity" type="QString" value="1"/>
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
          <Option name="blend_mode" type="QString" value="0"/>
          <Option name="blur_level" type="QString" value="2.645"/>
          <Option name="blur_unit" type="QString" value="MM"/>
          <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="color1" type="QString" value="69,116,40,255"/>
          <Option name="color2" type="QString" value="188,220,60,255"/>
          <Option name="color_type" type="QString" value="0"/>
          <Option name="discrete" type="QString" value="0"/>
          <Option name="draw_mode" type="QString" value="2"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="opacity" type="QString" value="0.5"/>
          <Option name="rampType" type="QString" value="gradient"/>
          <Option name="single_color" type="QString" value="255,255,255,255"/>
          <Option name="spread" type="QString" value="2"/>
          <Option name="spread_unit" type="QString" value="MM"/>
          <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
      <orderByClause asc="1" nullsFirst="0">"z_order"</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{dd88dbb7-d13d-4a8b-ac4b-935c2f73fe41}">
      <rule key="{242a6797-8162-4bd7-aced-999ba061a3eb}" active="0" filter="&quot;highway&quot; IN ('motorway','trunk','primary','secondary','tertiary')">
        <settings calloutType="simple">
          <text-style fontSizeUnit="Point" fieldName="name" fontLetterSpacing="0" capitalization="0" previewBkgrdColor="255,255,255,255" fontSize="20" fontUnderline="0" fontKerning="1" blendMode="0" legendString="Aa" textOrientation="horizontal" textOpacity="0" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontFamily="Open Sans Condensed" textColor="255,255,255,255" fontItalic="0" fontWordSpacing="0" useSubstitutions="0" namedStyle="Medium" isExpression="0" fontStrikeout="0" fontWeight="57" allowHtml="0">
            <families/>
            <text-buffer bufferColor="255,255,255,255" bufferNoFill="1" bufferOpacity="1" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM" bufferDraw="1"/>
            <text-mask maskSize="0" maskedSymbolLayers="" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0" maskType="0" maskOpacity="1"/>
            <background shapeSVGFile="" shapeBlendMode="0" shapeBorderWidth="0" shapeType="0" shapeRadiiUnit="Point" shapeRotation="0" shapeOffsetUnit="Point" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeJoinStyle="64" shapeBorderWidthUnit="Point" shapeDraw="1" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="Point" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeBorderColor="128,128,128,255">
              <symbol force_rhr="0" name="markerSymbol" alpha="1" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="255,158,23,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="square" k="cap_style"/>
                  <prop v="255,158,23,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" name="fillSymbol" alpha="1" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" enabled="1" locked="0" class="CentroidFill">
                  <Option type="Map">
                    <Option name="clip_on_current_part_only" type="QString" value="0"/>
                    <Option name="clip_points" type="QString" value="0"/>
                    <Option name="point_on_all_parts" type="QString" value="0"/>
                    <Option name="point_on_surface" type="QString" value="0"/>
                  </Option>
                  <prop v="0" k="clip_on_current_part_only"/>
                  <prop v="0" k="clip_points"/>
                  <prop v="0" k="point_on_all_parts"/>
                  <prop v="0" k="point_on_surface"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                  <symbol force_rhr="0" name="@fillSymbol@0" alpha="1" clip_to_extent="1" type="marker">
                    <data_defined_properties>
                      <Option type="Map">
                        <Option name="name" type="QString" value=""/>
                        <Option name="properties"/>
                        <Option name="type" type="QString" value="collection"/>
                      </Option>
                    </data_defined_properties>
                    <layer pass="0" enabled="1" locked="0" class="FontMarker">
                      <Option type="Map">
                        <Option name="angle" type="QString" value="0"/>
                        <Option name="chr" type="QString" value="A"/>
                        <Option name="color" type="QString" value="77,77,77,255"/>
                        <Option name="font" type="QString" value="Open Sans Condensed"/>
                        <Option name="font_style" type="QString" value="Regular"/>
                        <Option name="horizontal_anchor_point" type="QString" value="1"/>
                        <Option name="joinstyle" type="QString" value="bevel"/>
                        <Option name="offset" type="QString" value="0,0"/>
                        <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                        <Option name="offset_unit" type="QString" value="MM"/>
                        <Option name="outline_color" type="QString" value="35,35,35,255"/>
                        <Option name="outline_width" type="QString" value="0"/>
                        <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                        <Option name="outline_width_unit" type="QString" value="MM"/>
                        <Option name="size" type="QString" value="20"/>
                        <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                        <Option name="size_unit" type="QString" value="Point"/>
                        <Option name="vertical_anchor_point" type="QString" value="1"/>
                      </Option>
                      <prop v="0" k="angle"/>
                      <prop v="A" k="chr"/>
                      <prop v="77,77,77,255" k="color"/>
                      <prop v="Open Sans Condensed" k="font"/>
                      <prop v="Regular" k="font_style"/>
                      <prop v="1" k="horizontal_anchor_point"/>
                      <prop v="bevel" k="joinstyle"/>
                      <prop v="0,0" k="offset"/>
                      <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                      <prop v="MM" k="offset_unit"/>
                      <prop v="35,35,35,255" k="outline_color"/>
                      <prop v="0" k="outline_width"/>
                      <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                      <prop v="MM" k="outline_width_unit"/>
                      <prop v="20" k="size"/>
                      <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                      <prop v="Point" k="size_unit"/>
                      <prop v="1" k="vertical_anchor_point"/>
                      <effect enabled="1" type="effectStack">
                        <effect type="dropShadow">
                          <Option type="Map">
                            <Option name="blend_mode" type="QString" value="13"/>
                            <Option name="blur_level" type="QString" value="2.645"/>
                            <Option name="blur_unit" type="QString" value="MM"/>
                            <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="color" type="QString" value="0,0,0,255"/>
                            <Option name="draw_mode" type="QString" value="2"/>
                            <Option name="enabled" type="QString" value="0"/>
                            <Option name="offset_angle" type="QString" value="135"/>
                            <Option name="offset_distance" type="QString" value="2"/>
                            <Option name="offset_unit" type="QString" value="MM"/>
                            <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="opacity" type="QString" value="1"/>
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
                            <Option name="blend_mode" type="QString" value="0"/>
                            <Option name="blur_level" type="QString" value="2.645"/>
                            <Option name="blur_unit" type="QString" value="MM"/>
                            <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="color1" type="QString" value="69,116,40,255"/>
                            <Option name="color2" type="QString" value="188,220,60,255"/>
                            <Option name="color_type" type="QString" value="0"/>
                            <Option name="discrete" type="QString" value="0"/>
                            <Option name="draw_mode" type="QString" value="2"/>
                            <Option name="enabled" type="QString" value="0"/>
                            <Option name="opacity" type="QString" value="0.5"/>
                            <Option name="rampType" type="QString" value="gradient"/>
                            <Option name="single_color" type="QString" value="255,255,255,255"/>
                            <Option name="spread" type="QString" value="2"/>
                            <Option name="spread_unit" type="QString" value="MM"/>
                            <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
                            <Option name="draw_mode" type="QString" value="2"/>
                            <Option name="enabled" type="QString" value="1"/>
                            <Option name="reflect_x" type="QString" value="0"/>
                            <Option name="reflect_y" type="QString" value="0"/>
                            <Option name="rotation" type="QString" value="0"/>
                            <Option name="scale_x" type="QString" value="1"/>
                            <Option name="scale_y" type="QString" value="1"/>
                            <Option name="shear_x" type="QString" value="0.5"/>
                            <Option name="shear_y" type="QString" value="0"/>
                            <Option name="translate_unit" type="QString" value="MM"/>
                            <Option name="translate_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="translate_x" type="QString" value="0"/>
                            <Option name="translate_y" type="QString" value="0"/>
                          </Option>
                          <prop v="2" k="draw_mode"/>
                          <prop v="1" k="enabled"/>
                          <prop v="0" k="reflect_x"/>
                          <prop v="0" k="reflect_y"/>
                          <prop v="0" k="rotation"/>
                          <prop v="1" k="scale_x"/>
                          <prop v="1" k="scale_y"/>
                          <prop v="0.5" k="shear_x"/>
                          <prop v="0" k="shear_y"/>
                          <prop v="MM" k="translate_unit"/>
                          <prop v="3x:0,0,0,0,0,0" k="translate_unit_scale"/>
                          <prop v="0" k="translate_x"/>
                          <prop v="0" k="translate_y"/>
                        </effect>
                        <effect type="innerShadow">
                          <Option type="Map">
                            <Option name="blend_mode" type="QString" value="13"/>
                            <Option name="blur_level" type="QString" value="2.645"/>
                            <Option name="blur_unit" type="QString" value="MM"/>
                            <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="color" type="QString" value="0,0,0,255"/>
                            <Option name="draw_mode" type="QString" value="2"/>
                            <Option name="enabled" type="QString" value="0"/>
                            <Option name="offset_angle" type="QString" value="135"/>
                            <Option name="offset_distance" type="QString" value="2"/>
                            <Option name="offset_unit" type="QString" value="MM"/>
                            <Option name="offset_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="opacity" type="QString" value="1"/>
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
                            <Option name="blend_mode" type="QString" value="0"/>
                            <Option name="blur_level" type="QString" value="2.645"/>
                            <Option name="blur_unit" type="QString" value="MM"/>
                            <Option name="blur_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                            <Option name="color1" type="QString" value="69,116,40,255"/>
                            <Option name="color2" type="QString" value="188,220,60,255"/>
                            <Option name="color_type" type="QString" value="0"/>
                            <Option name="discrete" type="QString" value="0"/>
                            <Option name="draw_mode" type="QString" value="2"/>
                            <Option name="enabled" type="QString" value="0"/>
                            <Option name="opacity" type="QString" value="0.5"/>
                            <Option name="rampType" type="QString" value="gradient"/>
                            <Option name="single_color" type="QString" value="255,255,255,255"/>
                            <Option name="spread" type="QString" value="2"/>
                            <Option name="spread_unit" type="QString" value="MM"/>
                            <Option name="spread_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
                      <data_defined_properties>
                        <Option type="Map">
                          <Option name="name" type="QString" value=""/>
                          <Option name="properties" type="Map">
                            <Option name="char" type="Map">
                              <Option name="active" type="bool" value="true"/>
                              <Option name="expression" type="QString" value="&quot;name&quot;"/>
                              <Option name="type" type="int" value="3"/>
                            </Option>
                          </Option>
                          <Option name="type" type="QString" value="collection"/>
                        </Option>
                      </data_defined_properties>
                    </layer>
                  </symbol>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadius="1.5" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" decimals="3" autoWrapLength="0" formatNumbers="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" wrapChar="" placeDirectionSymbol="0" plussign="0" multilineAlign="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1"/>
          <placement dist="0" offsetType="0" lineAnchorClipping="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" repeatDistance="0" geometryGenerator="" preserveRotation="1" maxCurvedCharAngleIn="25" centroidInside="0" rotationUnit="AngleDegrees" overrunDistance="0" lineAnchorType="0" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" xOffset="0" placement="3" placementFlags="10" quadOffset="4" fitInPolygonOnly="0" yOffset="0" overrunDistanceUnit="MM" centroidWhole="0" priority="5" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" geometryGeneratorEnabled="0" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" lineAnchorPercent="0.5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry"/>
          <rendering zIndex="0" scaleMin="0" fontLimitPixelSize="0" maxNumLabels="2000" scaleVisibility="0" upsidedownLabels="0" unplacedVisibility="0" displayAll="0" fontMaxPixelSize="10000" mergeLines="1" obstacleFactor="1" fontMinPixelSize="3" obstacle="0" drawLabels="1" obstacleType="1" labelPerPart="0" limitNumLabels="0" scaleMax="0" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Size" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="expression" type="QString" value="CASE WHEN &quot;highway&quot; IN ('motorway','trunk','primary') THEN 18&#xa;  ELSE 14&#xa;END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol force_rhr=&quot;0&quot; name=&quot;symbol&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option name="embeddedWidgets/count" type="int" value="0"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory direction="0" diagramOrientation="Up" backgroundColor="#ffffff" scaleDependency="Area" showAxis="1" sizeType="MM" spacingUnit="MM" lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" minScaleDenominator="0" rotationOffset="270" penColor="#000000" width="15" barWidth="5" scaleBasedVisibility="0" lineSizeType="MM" opacity="1" penAlpha="255" spacing="5" height="15" penWidth="0" maxScaleDenominator="1e+08" minimumSize="0" enabled="0" sizeScale="3x:0,0,0,0,0,0" spacingUnitScale="3x:0,0,0,0,0,0" backgroundAlpha="255">
      <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" color="#000000" field="" colorOpacity="1"/>
      <axisSymbol>
        <symbol force_rhr="0" name="" alpha="1" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" enabled="1" locked="0" class="SimpleLine">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="35,35,35,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.26"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="trim_distance_end" type="QString" value="0"/>
              <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_end_unit" type="QString" value="MM"/>
              <Option name="trim_distance_start" type="QString" value="0"/>
              <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="trim_distance_start_unit" type="QString" value="MM"/>
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
              <Option name="use_custom_dash" type="QString" value="0"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" dist="0" showAll="1" priority="0" linePlacementFlags="18" placement="2" zIndex="0">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
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
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="highway" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="waterway" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="aerialway" configurationFlags="None">
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
    <field name="man_made" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="railway" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="z_order" configurationFlags="None">
      <editWidget type="Range">
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
    <alias name="" field="ogc_fid" index="0"/>
    <alias name="" field="osm_id" index="1"/>
    <alias name="" field="name" index="2"/>
    <alias name="" field="highway" index="3"/>
    <alias name="" field="waterway" index="4"/>
    <alias name="" field="aerialway" index="5"/>
    <alias name="" field="barrier" index="6"/>
    <alias name="" field="man_made" index="7"/>
    <alias name="" field="railway" index="8"/>
    <alias name="" field="z_order" index="9"/>
    <alias name="" field="other_tags" index="10"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="ogc_fid" expression=""/>
    <default applyOnUpdate="0" field="osm_id" expression=""/>
    <default applyOnUpdate="0" field="name" expression=""/>
    <default applyOnUpdate="0" field="highway" expression=""/>
    <default applyOnUpdate="0" field="waterway" expression=""/>
    <default applyOnUpdate="0" field="aerialway" expression=""/>
    <default applyOnUpdate="0" field="barrier" expression=""/>
    <default applyOnUpdate="0" field="man_made" expression=""/>
    <default applyOnUpdate="0" field="railway" expression=""/>
    <default applyOnUpdate="0" field="z_order" expression=""/>
    <default applyOnUpdate="0" field="other_tags" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="ogc_fid"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="osm_id"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="name"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="highway"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="waterway"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="aerialway"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="barrier"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="man_made"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="railway"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="z_order"/>
    <constraint notnull_strength="0" unique_strength="0" exp_strength="0" constraints="0" field="other_tags"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="ogc_fid"/>
    <constraint desc="" exp="" field="osm_id"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="highway"/>
    <constraint desc="" exp="" field="waterway"/>
    <constraint desc="" exp="" field="aerialway"/>
    <constraint desc="" exp="" field="barrier"/>
    <constraint desc="" exp="" field="man_made"/>
    <constraint desc="" exp="" field="railway"/>
    <constraint desc="" exp="" field="z_order"/>
    <constraint desc="" exp="" field="other_tags"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" name="ogc_fid" hidden="0" type="field"/>
      <column width="-1" name="osm_id" hidden="0" type="field"/>
      <column width="-1" name="name" hidden="0" type="field"/>
      <column width="-1" name="highway" hidden="0" type="field"/>
      <column width="-1" name="waterway" hidden="0" type="field"/>
      <column width="-1" name="aerialway" hidden="0" type="field"/>
      <column width="-1" name="barrier" hidden="0" type="field"/>
      <column width="-1" name="man_made" hidden="0" type="field"/>
      <column width="-1" name="railway" hidden="0" type="field"/>
      <column width="-1" name="z_order" hidden="0" type="field"/>
      <column width="-1" name="other_tags" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
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
    <field name="aerialway" editable="1"/>
    <field name="barrier" editable="1"/>
    <field name="dummy" editable="1"/>
    <field name="highway" editable="1"/>
    <field name="man_made" editable="1"/>
    <field name="name" editable="1"/>
    <field name="ogc_fid" editable="1"/>
    <field name="osm_id" editable="1"/>
    <field name="other_tags" editable="1"/>
    <field name="railway" editable="1"/>
    <field name="waterway" editable="1"/>
    <field name="z_order" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="aerialway" labelOnTop="0"/>
    <field name="barrier" labelOnTop="0"/>
    <field name="dummy" labelOnTop="0"/>
    <field name="highway" labelOnTop="0"/>
    <field name="man_made" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="ogc_fid" labelOnTop="0"/>
    <field name="osm_id" labelOnTop="0"/>
    <field name="other_tags" labelOnTop="0"/>
    <field name="railway" labelOnTop="0"/>
    <field name="waterway" labelOnTop="0"/>
    <field name="z_order" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="aerialway"/>
    <field reuseLastValue="0" name="barrier"/>
    <field reuseLastValue="0" name="dummy"/>
    <field reuseLastValue="0" name="highway"/>
    <field reuseLastValue="0" name="man_made"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="ogc_fid"/>
    <field reuseLastValue="0" name="osm_id"/>
    <field reuseLastValue="0" name="other_tags"/>
    <field reuseLastValue="0" name="railway"/>
    <field reuseLastValue="0" name="waterway"/>
    <field reuseLastValue="0" name="z_order"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
