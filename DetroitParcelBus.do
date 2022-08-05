import excel "C:\Users\lgrec\OneDrive\Desktop\DetroitParcelSpatial.xlsx", sheet("Parcels_TableToExcel") firstrow

/*
Replace C:\Users\lgrec\OneDrive\Desktop\DetroitParcelSpatial.xlsx with file location on your computer

Parcel data available at data.detroitmi.gov/datasets/detroitmi::parcels-2/about
DDOT route data available at data.detroitmi.gov/datasets/detroitmi::ddot-bus-routes-1/explore

For spatial data, author loaded parcel and DDOT data into ArcGIS Pro and coded any parcel within a distance of 100 ft of a bus route (enough to select only parcels fronting a route) with the coresponding route hierarchy coded. No other data was changed or added.

User can access parcel data with route hierarchy codes as created by author at docs.google.com/spreadsheets/d/1_INzgDLTkqELgNQCW00E7tT123hNX4iQ/edit?usp=sharing&ouid=105039616787298568701&rtpof=true&sd=true

Replace FILE LOCATION with file location on users computer. Leave quotation marks. File must have a column for which type of bus route a parcel is located along called 'Heirachy' or must edit line 20. File by author is ready to use without edits and is recommended
*/

drop if property_1 != "RESIDENTIAL"

drop if tax_status != "TAXABLE"

drop if num_bldgs == 0

rename Heirachy hierarchy

label variable parcel_num "Parcel number"

label variable ward "Ward"

label variable address "Parcel address"

label variable zip_code "Parcel zip code"

label variable council_di "City council district"

label variable taxpayer_1 "Taxpayer 1 name"

label variable taxpayer_2 "Taxpayer 2 name"

label variable taxpayer_s "Taxpayer address"

label variable taxpayer_c "Taxpayer city"

label variable taxpayer_3 "Taxpayer state"

label variable taxpayer_z "taxpayer zip"

label variable property_c "Property class"

label variable property_1 "Property class description"

label variable use_code "Use code"

label variable use_code_d "Use code description"

label variable tax_status "Taxable status"

label variable total_squa "Parcel square footage"

label variable total_acre "Parcel acreage"

label variable frontage "Parcel frontage"

label variable depth "Parcel depth"

label variable homestead_ "Homestead principle residence exemption"

label variable nez "Neighborhood Enterpirse Zone"

label variable is_improve "Parcel has been improved"

label variable num_bldgs "Number of buildings"

label variable total_floo "Total floor space of buildings"

label variable style "Building style"

label variable year_built "Year of structure construction"

label variable sale_price "Most recent sale price"

label variable sale_date "Last sale date"

label variable taxable_va "Taxable value"

label variable assessed_v "Assessed value"

label variable zoning "Zoning code"

label variable legal_desc "Legal description"

label variable hierarchy "Type of bus route parcel is located along"

drop FID

drop OBJECTID

drop object_id

label define improved_code 0 "not improved" 1 "improved"

label values hierarchy improved_code

label define route_hierarchy 0 "No route" 1 "Connect10 route" 2 "Key route" 3 "Neighborhood route" 4 "Part-time route"

label values hierarchy route_hierarchy

rename council_di district

rename taxpayer_s taxpayer_add

rename taxpayer_c taxpayer_city

rename taxpayer_3 taxpayer_state

rename taxpayer_z taxpayer_zip

rename zip_code zip

rename property_c property_class

rename property_1 property_desc

rename use_code_d use_desc

rename homestead_ homestead

rename is_improve is_improved

rename total_floo total_floor

rename assessed_v assessed

rename tax_status taxable

rename taxable_va taxable_value

rename subdivisio subdivision

replace total_floor = . if total_floor == 0 & num_bldgs != 0

replace year_built = . if year_built == 0 & num_bldgs != 0

replace total_squa = . if total_squa == 0

replace total_acre = . if total_squa == .

replace frontage = . if frontage == 0

replace depth = . if depth == 0

replace total_squa = frontage * depth if total_squa == .

replace total_acre = total_squa * (1/43560) if total_acre == .

replace sale_price = . if sale_price == 0

replace assessed = . if assessed == 0

replace taxable_value = . if assessed == .

gen assessedbuild = assessed/ num_bldgs

gen assessedsqft = assessed/ total_squa

label variable assessedbuild "Assessed value per structure"

label variable assessedsqft "Assessed value per parcel square foot"

