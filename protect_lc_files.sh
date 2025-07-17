#!/bin/bash
# Protect Lexus LC files from being overwritten

# List of definitive Lexus LC files
FILES=(
  "opendbc/sunnypilot/car/car_list.json"
  "opendbc/car/toyota/fingerprints.py"
  "opendbc/car/car_helpers.py"
  "opendbc/car/car.capnp"
  "opendbc/car/values.py"
  "opendbc/car/torque_data/params.toml"
  "opendbc/car/torque_data/substitute.toml"
  "opendbc/car/fingerprints.py"
  "opendbc/car/tests/routes.py"
  "opendbc/dbc/lexus_lc_dhp_generated.dbc"
  "opendbc/car/toyota/values.py"
)

# Set files to read-only
for f in "${FILES[@]}"; do
  if [ -f "$f" ]; then
    chmod 444 "$f"
    echo "Set $f to read-only."
  else
    echo "File $f not found."
  fi
done

echo "Lexus LC files are now protected from overwrites."
