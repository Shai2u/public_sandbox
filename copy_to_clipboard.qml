<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Actions" version="3.34.7-Prizren">
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting name="Copy attributes to clipboard" type="1" capture="0" action="&quot;&quot;&quot;&#xa;Copy to clipboard action script&#xa;Author: Shai Sussman (shai.sussman@gmail.com)&#xa;Date: 2024/09/01&#xa;&quot;&quot;&quot;&#xa;import pandas as pd&#xa;from qgis.utils import iface&#xa;&#xa;selected_layer = iface.activeLayer()&#xa;if selected_layer.isValid() and selected_layer.selectedFeatureCount() > 0:&#xa;    features = [feature for feature in selected_layer.selectedFeatures()]&#xa;    # Extract field names&#xa;    field_names = [field.name() for field in selected_layer.fields()]&#xa;    &#xa;    # Create a list to hold the feature data&#xa;    data = []&#xa;    &#xa;    # Iterate over selected features and extract attributes&#xa;    for feature in features:&#xa;        row = [feature.attribute(field) for field in field_names]&#xa;        data.append(row)&#xa;    &#xa;    # Create a Pandas DataFrame&#xa;    df = pd.DataFrame(data, columns=field_names)&#xa;    df.to_clipboard(index=False)&#xa;else:&#xa;    print('layer is not valid')&#xa;" isEnabledOnlyWhenEditable="0" shortTitle="copy  to clipboard" notificationMessage="" id="{1bd3a38e-7ee7-4317-b86d-7998d9f20507}" icon="">
      <actionScope id="Form"/>
      <actionScope id="Layer"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>1</layerGeometryType>
</qgis>
