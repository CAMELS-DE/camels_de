# Update CAMELS-DE from version 1.0.0 to version 1.1.0

## Changelog
* LSTM benchmark results are now based on a LSTM with 10 ensemble members, changing the median NSE in the testing period from 0.83 to 0.85
    * The columns `discharge_spec_sim_lstm` and `discharge_vol_sim_lstm` in `timeseries_simulated` are now based on the median values of the 10 ensemble members.
    * The column `NSE_lstm` in `CAMELS_DE_simulation_benchmark.csv` is now calculated from the median simulations of the 10 ensemble members
    * `model_parameters/LSTM/CAMELS_DE_epochs_training_lstm.zip` now contains the epochs of the 10 ensemble members
* The columns `NSE_lstm`, `NSE_hbv` and `training_perc_complete` in `CAMELS_DE_simulation_benchmark.csv` are calculated from 2001 - 2020, now corrected to 2000 - 2020
* Fixed a bug in the calculation of `high_prec_dur` and `low_prec_dur` in `CAMELS_DE_climatic_attributes.csv` calculation (thank you to Bastian Klein from BfG for reporting this issue)
* Bayern: removed blank space after gauge and water body name and removed water body name from some gauge names, where it was included as "[gauge_name]_[water_body_name]", e.g. "Würzburg_Main" -> "Würzburg", water body name is now only included in the `water_body_name` column in `CAMELS_DE_topographic_attributes.csv`
* Nordrhein-Westfalen: corrected some wrong river names in `CAMELS_DE_topographic_attributes.csv`
* Sachsen: added `gauge_elevation_metadata` information to `CAMELS_DE_topographic_attributes.csv`