#!/bin/bash

set -ex

TEMP_MIN=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${OPENWEATHER_CITY}&appid=${OPENWEATHER_TOKEN}" | jq -r '.main.temp_min')
echo "::set-output min=${TEMP_MIN}"

TEMP_MAX=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${OPENWEATHER_CITY}&appid=${OPENWEATHER_TOKEN}" | jq -r '.main.temp_max')
echo "::set-output max=${TEMP_MIN}"