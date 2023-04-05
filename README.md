# UrbanDS_Team
## Introduction
In this report, we aim to investigate the non-linear relationship and spatial heterogeneity of influential factors that potentially contributed to the duration of wildfire incidents in Texas from 2014 to 2022 using an interpretable machine learning approach and spatial-explicit machine learning approach. We divided the administrative areas of Texas into grids with a side length of 5 miles and got 10404 grids in total. We measure the wildfire duration as the yearly average wildfire days from 2014 to 2022. This measurement not only considers the occurrence of wildfire but also considers the duration of the wildfire and thus human interference factor should be included.
## Datasets
Wildfire incidents derived from NIFC Open Data Site of National Interagency Fire Center (https://data-nifc.opendata.arcgis.com/)

Population derived from LandScan Global Population Database, Oak Ridge National Lab (https://landscan.ornl.gov/about)

Roadway Linework derived from Texas Department of Transportation (https://gis-txdot.opendata.arcgis.com/)

Fire Station downloaded by Google Map API

State Park Boundaries from TPWD SPATIAL DATA (https://tpwd.texas.gov/gis/#data)

National Dispatch Office Locations from National Interagency Fire Center (https://data-nifc.opendata.arcgis.com/)

Interagency Remote Automatic Weather Stations from National Interagency Fire Center (https://data-nifc.opendata.arcgis.com/)

Existing Reservoirs from Texas Water Development Board (https://www.twdb.texas.gov/mapping/gisdata.asp)

Some natural environment variables derived from the North American Land Data Assimilation System (NLDAS) (https://disc.gsfc.nasa.gov/datasets?keywords=NLDAS)

Land cover variables derived from USGS National Land Cover Database (National Land Cover Database | U.S. Geological Survey, n.d.) (https://www.usgs.gov/centers/eros/science/national-land-cover-database)
## Models
### Random Forest
A random forest is a meta estimator that fits a number of classifying decision trees on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting. The sub-sample size is controlled with the max_samples parameter if bootstrap=True (default), otherwise the whole dataset is used to build each tree.

### Geographically Weighted Random Forest (GWRF)
We used SpatialML package in R to build GWRF. (https://cran.r-project.org/web/packages/SpatialML/SpatialML.pdf)
![alt text](https://github.com/UrbanDS/UrbanDS_Team/blob/main/Figure/Local%20variable%20importance%20plots%20in%20GWRF.jpg)
## Results
We developed a dashboard showing our results. (https://tamu.maps.arcgis.com/apps/dashboards/83a779c859a84203addb316bcf30c012)
