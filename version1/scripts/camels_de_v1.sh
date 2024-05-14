#!/bin/bash
# make directories to store the output data if they do not exist
mkdir -p /output_data/scripts

# logging
exec > >(tee -a /output_data/scripts/processing.log) 2>&1

# Start processing
echo "[$(date +%F\ %T)] Starting compilation of the CAMELS-DE V1 dataset..."

echo "[$(date +%T)] Fixing errors in camelsp data..."
papermill /scripts/00_fix_errors_in_data.ipynb /output_data/scripts/00_fix_errors_in_data.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling hydrometeorological timeseries data..."
papermill /scripts/01_hydromet_timeseries.ipynb /output_data/scripts/01_hydromet_timeseries.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling climatic attributes .csv file..."
papermill /scripts/02_climatic_attributes.ipynb /output_data/scripts/02_climatic_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling human influence attributes .csv file..."
papermill /scripts/03_humaninfluence_attributes.ipynb /output_data/scripts/03_humaninfluence_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling hydrogeological attributes .csv file..."
papermill /scripts/04_hydrogeology_attributes.ipynb /output_data/scripts/04_hydrogeology_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling soil attributes .csv file..."
papermill /scripts/05_soil_attributes.ipynb /output_data/scripts/05_soil_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling land cover attributes .csv file..."
papermill /scripts/06_landcover_attributes.ipynb /output_data/scripts/06_landcover_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling topographic attributes .csv file..."
papermill /scripts/07_topographic_attributes.ipynb /output_data/scripts/07_topographic_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling hydrologic attributes .csv file..."
papermill /scripts/08_hydrologic_attributes.ipynb /output_data/scripts/08_hydrologic_attributes.ipynb --no-progress-bar

echo "[$(date +%T)] Compiling catchment boundary .shp and .gpkg files..."
papermill /scripts/09_catchment_boundaries.ipynb /output_data/scripts/09_catchment_boundaries.ipynb --no-progress-bar

echo "[$(date +%T)] Finished compilation of the CAMELS-DE V1 dataset."

# zip the output data to camels_de_v1.zip
cd /output_data/camels_de && zip -r -q ../camels_de_v1.zip .
echo "[$(date +%T)] Zipped the output data to camels_de_v1.zip"

# Change permissions of output files
chmod -R 777 /output_data/