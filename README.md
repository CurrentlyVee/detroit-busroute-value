# Detroit Bus Route and Parcel Value Data
Data have been combined from City of Detroit "Parcel" and "DDOT Bus Routes" data. Parcel's within 100 feet of a DDOT route have been coded as being along a bus route.

<ul>
  <li>Detroit parcel data: https://data.detroitmi.gov/datasets/detroitmi::parcels-2/about</li>
  <li>DDOT bus route data: https://data.detroitmi.gov/datasets/detroitmi::ddot-bus-routes-1/about</li>
<li>Parcel and DDOT spatial overlay: https://docs.google.com/spreadsheets/d/1_INzgDLTkqELgNQCW00E7tT123hNX4iQ/edit?usp=sharing&ouid=105039616787298568701&rtpof=true&sd=true</li>

## Data dictonary
User created variables
<ul>
<li>assessedbuild: assessed value per parcel strucutre</li>
<li>assessedfloor: assessed value per strucutre sqaure foot</li>
<li>assessedsqft: assessed value per parcel sqaure foot</li>
<li>assessedsqft_cut: assessed value per parcel square foot cut into 4 groups
<li>hiearachy: type of bus route a parcel is lcoated along</li>
<li>isRoute: whether parcel is located along a bus route</li>
</ul>

Data used for analysis
<ul>
<li>assessed: assessed value as of 2021</li>
<li>property_desc: description of property classification</li>
<li>taxpayer_1: name of taxpayer 1</li>
<li>total_floor: total floor space of structure on a parcel</li>
<li>total_squa: square footage of parcel</li>
<li>year_built: year of strucutre construction</li>
</ul>

All other variables
<ul>
<li>address: parcel address</li>
<li>depth: depth of parcel, in feet</li>
<li>district: Detroit City Council district</li>
<li>frontage: width of parcel, in feet</li>
<li>homestead: homestead principle residence exception</li>
<li>is_improved: whether parcel has been improved or not</li>
<li>landmap: unknown</li>
<li>legal_desc: legal description used for parcel</li>
<li>nez: name of neighborhood enterprise zone, if applicable</li>
<li>num_bldgs: number of strucutre on parcel</li>
<li>parcel_num: parcel number and unique ID</li>
<li>property_class: property classification</li>
<li>style: building style</li>
<li>taxable: taxable status of parcel</li>
<li>taxable_value: taxable value as of 2021</li>
<li>taxpayer_2: name of taxpayer 2 if applicable</li>
<li>taxpayer_add: taxpayer 1 address</li>
<li>taxpayer_city: taxpayer 1 city</li>
<li>taxpayer_state: taxpayer 1 state</li>
<li>taxpayer_zip: taxpayer 1 zip code</li>
<li>total_acre: acerage of parcel</li>
<li>related: other related parcels</li>
<li>sale_date: most recent sale date</li>
<li>sale_price: most recent sale price</li>
<li>SHAPE_Area: shape area used for spatial data</li>
<li>SHAPE_Leng: shape length used for spatial data</li>
<li>subdivision: unknown</li>
<li>use_code: parcel use code</li>
<li>use_desc: description of parcel use code</li>
<li>ward: parcel ward? unsure what ward is</li>
<li>zip: parcel zip code</li>
<li>zoning: parcel zoning code</li>
</ul>
