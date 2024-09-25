# CAMELS-DE version 1

## Description

This container compiles the first version of **CAMELS-DE**.

There are several jupyter notebooks that collect and select the data from the [camelsp repository](https://github.com/camels-DE/camelsp).  
The data is organized in a way that resembles the structure of the CAMELS-GB dataset.  
Some notebooks also postprocess the data or calculate additional variables and statistics.  

> [!IMPORTANT]
> Note that all CAMELS-DE containers processing the different datasets such as soil data, land cover data, etc. have run and saved the data to the camelsp output directory.  

In the end, the dataset organisation is as follows:

```
📦 camels_de
┣ 📂 timeseries
┃ ┣ 📜 CAMELS_DE_hydromet_timeseries_DE110000.csv
┃ ┣ 📜 CAMELS_DE_hydromet_timeseries_DE110010.csv
┃ ┣ 📜 CAMELS_DE_hydromet_timeseries_DE110020.csv
┃ ┗ 📜 ...
┣ 📂 timeseries_simulated
┃ ┣ 📜 CAMELS_DE_discharge_sim_DE110000.csv
┃ ┣ 📜 CAMELS_DE_discharge_sim_DE110010.csv
┃ ┣ 📜 CAMLES_DE_discharge_sim_DE110020.csv
┃ ┗ 📜 ...
┣ 📂 CAMELS_DE_catchment_boundaries
┃ ┣ 📂 catchments
┃ ┃ ┣ 🗺️ CAMELS_DE_catchments.shp
┃ ┃ ┗ 🗺️ CAMELS_DE_catchments.gpkg
┃ ┣ 📂 gauging_stations
┃ ┃ ┣ 🗺️ CAMELS_DE_gauging_stations.shp
┃ ┗ ┗ 🗺️ CAMELS_DE_gauging_stations.gpkg
┣ 📂 model_parameters
┃ ┣ 📂 HBV
┃ ┃ ┗ 📜 CAMELS_DE_parameters_hbv.csv
┃ ┃ 📂 LSTM
┃ ┗ ┗ 📦 CAMELS_DE_epochs_training_lstm.zip
┣ 📜 CAMELS_DE_climatic_attributes.csv
┣ 📜 CAMELS_DE_humaninfluence_attributes.csv
┣ 📜 CAMELS_DE_hydrogeology_attributes.csv
┣ 📜 CAMELS_DE_hydrologic_attributes.csv
┣ 📜 CAMELS_DE_landcover_attributes.csv
┣ 📜 CAMELS_DE_soil_attributes.csv
┣ 📜 CAMELS_DE_topographic_attributes.csv
┗ 📜 CAMELS_DE_simulation_benchmark.csv
```

## Container

### Build the container

```bash
docker build -t camels_de_v1 .
```

### Run the container

To run the container, the local `output_data` and `camelsp/output_data` directories have to be mounted inside the container:

```bash
docker run -v ./output_data:/output_data -v /path/to/local/camelsp:/camelsp -it --rm camels_de_v1
```
