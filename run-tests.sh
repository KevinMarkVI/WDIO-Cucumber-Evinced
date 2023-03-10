#!/bin/bash

rm -rf reports/cucumber-json/*


if [ "${HEADED}" == "true" ]; then
  echo "Running tests in headed mode"
  export BROWSER_MODE='--headed'
else
  echo "Running tests in headless mode"
  export BROWSER_MODE='--headless'
fi

npm run wdio

echo "Report is saved: $(pwd)/reports/index.html"
