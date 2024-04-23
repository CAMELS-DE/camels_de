# CAMELS-DE version 1

This container compiles the first version of **CAMELS-DE**.

There are several jupyter notebooks that collect and select the data from the [camelsp repository](https://github.com/camels-DE/camelsp).  
The data is organized in a way that resembles the structure of the CAMELS-GB dataset.  
Some notebooks also postprocess the data or calculate additional variables and statistics.

In the end, the dataset organisation is as follows:

```
📦 camels_de
┣ 📂 timeseries
┃ ┣ 📜 CAMELS_DE_hydromet_timeseries_DE110000.csv
┃ ┣ 📜 CAMELS_DE_hydromet_timeseries_DE110010.csv
┃ ┣ 📜 CAMLES_DE_hydromet_timeseries_DE110020.csv
┃ ┗ 📜 ...
┣ 📂 CAMELS_DE_catchment_boundaries
┃ ┣ 🗺️ CAMELS_DE_catchment_boundaries.geopackage
┃ ┗ 🗺️ CAMELS_DE_catchment_boundaries.shp
┣ 📜 CAMELS_DE_climatic_attributes.csv
┣ 📜 CAMELS_DE_humaninfluence_attributes.csv
┣ 📜 CAMELS_DE_hydrogeology_attributes.csv
┣ 📜 CAMELS_DE_hydrologic_attributes.csv
┣ 📜 CAMELS_DE_hydrometry_attributes.csv
┣ 📜 CAMELS_DE_landcover_attributes.csv
┣ 📜 CAMELS_DE_soil_attributes.csv
┗ 📜 CAMELS_DE_topographic_attributes.csv
```