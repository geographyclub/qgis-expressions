<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.16-Białowieża" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" simplifyLocal="1" symbologyReferenceScale="-1" simplifyAlgorithm="0" readOnly="0" styleCategories="AllStyleCategories" maxScale="0" minScale="100000000" labelsEnabled="0" simplifyDrawingHints="0" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" startField="" durationField="" mode="0" endField="" endExpression="" fixedDuration="0" accumulate="0" startExpression="" limitMode="0" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 max_value="0" weight_expression="CASE WHEN other_tags LIKE '%&quot;amenity&quot;=>&quot;parking&quot;%' THEN 1&#xa;  ELSE 0&#xa;END" type="heatmapRenderer" referencescale="-1" radius="250" radius_unit="7" forceraster="0" radius_map_unit_scale="3x:0,0,0,0,0,0" symbollevels="0" quality="3" enableorderby="0">
    <colorramp type="gradient" name="[source]">
      <Option type="Map">
        <Option type="QString" value="255,245,240,255" name="color1"/>
        <Option type="QString" value="103,0,13,255" name="color2"/>
        <Option type="QString" value="0" name="discrete"/>
        <Option type="QString" value="gradient" name="rampType"/>
        <Option type="QString" value="0.13;254,224,210,255:0.26;252,187,161,255:0.39;252,146,114,255:0.52;251,106,74,255:0.65;239,59,44,255:0.78;203,24,29,255:0.9;165,15,21,255" name="stops"/>
      </Option>
      <prop k="color1" v="255,245,240,255"/>
      <prop k="color2" v="103,0,13,255"/>
      <prop k="discrete" v="0"/>
      <prop k="rampType" v="gradient"/>
      <prop k="stops" v="0.13;254,224,210,255:0.26;252,187,161,255:0.39;252,146,114,255:0.52;251,106,74,255:0.65;239,59,44,255:0.78;203,24,29,255:0.9;165,15,21,255"/>
    </colorramp>
  </renderer-v2>
  <customproperties>
    <Option type="Map">
      <Option type="int" value="0" name="embeddedWidgets/count"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>6</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundAlpha="255" direction="0" showAxis="1" penColor="#000000" sizeScale="3x:0,0,0,0,0,0" spacingUnit="MM" lineSizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" enabled="0" penWidth="0" diagramOrientation="Up" spacing="5" opacity="1" penAlpha="255" width="15" sizeType="MM" spacingUnitScale="3x:0,0,0,0,0,0" lineSizeType="MM" maxScaleDenominator="1e+08" minScaleDenominator="0" backgroundColor="#ffffff" minimumSize="0" rotationOffset="270" scaleBasedVisibility="0" height="15" barWidth="5" labelPlacementMethod="XHeight">
      <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label="" colorOpacity="1"/>
      <axisSymbol>
        <symbol type="line" force_rhr="0" alpha="1" name="" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
  <DiagramLayerSettings placement="0" priority="0" obstacle="0" dist="0" linePlacementFlags="18" zIndex="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
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
    <field configurationFlags="None" name="name">
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
    <field configurationFlags="None" name="highway">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="ref">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="address">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="is_in">
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
    <field configurationFlags="None" name="man_made">
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
    <alias index="2" field="name" name=""/>
    <alias index="3" field="barrier" name=""/>
    <alias index="4" field="highway" name=""/>
    <alias index="5" field="ref" name=""/>
    <alias index="6" field="address" name=""/>
    <alias index="7" field="is_in" name=""/>
    <alias index="8" field="place" name=""/>
    <alias index="9" field="man_made" name=""/>
    <alias index="10" field="other_tags" name=""/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="ogc_fid" expression=""/>
    <default applyOnUpdate="0" field="osm_id" expression=""/>
    <default applyOnUpdate="0" field="name" expression=""/>
    <default applyOnUpdate="0" field="barrier" expression=""/>
    <default applyOnUpdate="0" field="highway" expression=""/>
    <default applyOnUpdate="0" field="ref" expression=""/>
    <default applyOnUpdate="0" field="address" expression=""/>
    <default applyOnUpdate="0" field="is_in" expression=""/>
    <default applyOnUpdate="0" field="place" expression=""/>
    <default applyOnUpdate="0" field="man_made" expression=""/>
    <default applyOnUpdate="0" field="other_tags" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" field="ogc_fid" constraints="3" exp_strength="0" notnull_strength="1"/>
    <constraint unique_strength="0" field="osm_id" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="name" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="barrier" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="highway" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="ref" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="address" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="is_in" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="place" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="man_made" constraints="0" exp_strength="0" notnull_strength="0"/>
    <constraint unique_strength="0" field="other_tags" constraints="0" exp_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="ogc_fid" exp="" desc=""/>
    <constraint field="osm_id" exp="" desc=""/>
    <constraint field="name" exp="" desc=""/>
    <constraint field="barrier" exp="" desc=""/>
    <constraint field="highway" exp="" desc=""/>
    <constraint field="ref" exp="" desc=""/>
    <constraint field="address" exp="" desc=""/>
    <constraint field="is_in" exp="" desc=""/>
    <constraint field="place" exp="" desc=""/>
    <constraint field="man_made" exp="" desc=""/>
    <constraint field="other_tags" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" width="-1" name="ogc_fid" hidden="0"/>
      <column type="field" width="-1" name="osm_id" hidden="0"/>
      <column type="field" width="-1" name="name" hidden="0"/>
      <column type="field" width="-1" name="barrier" hidden="0"/>
      <column type="field" width="-1" name="highway" hidden="0"/>
      <column type="field" width="-1" name="ref" hidden="0"/>
      <column type="field" width="-1" name="address" hidden="0"/>
      <column type="field" width="-1" name="is_in" hidden="0"/>
      <column type="field" width="-1" name="place" hidden="0"/>
      <column type="field" width="-1" name="man_made" hidden="0"/>
      <column type="field" width="-1" name="other_tags" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
    <field name="address" editable="1"/>
    <field name="barrier" editable="1"/>
    <field name="highway" editable="1"/>
    <field name="is_in" editable="1"/>
    <field name="man_made" editable="1"/>
    <field name="name" editable="1"/>
    <field name="ogc_fid" editable="1"/>
    <field name="osm_id" editable="1"/>
    <field name="other_tags" editable="1"/>
    <field name="place" editable="1"/>
    <field name="ref" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="address"/>
    <field labelOnTop="0" name="barrier"/>
    <field labelOnTop="0" name="highway"/>
    <field labelOnTop="0" name="is_in"/>
    <field labelOnTop="0" name="man_made"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="ogc_fid"/>
    <field labelOnTop="0" name="osm_id"/>
    <field labelOnTop="0" name="other_tags"/>
    <field labelOnTop="0" name="place"/>
    <field labelOnTop="0" name="ref"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="address"/>
    <field reuseLastValue="0" name="barrier"/>
    <field reuseLastValue="0" name="highway"/>
    <field reuseLastValue="0" name="is_in"/>
    <field reuseLastValue="0" name="man_made"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="ogc_fid"/>
    <field reuseLastValue="0" name="osm_id"/>
    <field reuseLastValue="0" name="other_tags"/>
    <field reuseLastValue="0" name="place"/>
    <field reuseLastValue="0" name="ref"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
