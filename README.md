# Evinced SDK - usage example:
## JavaScript + Babel WebdriverIO v7.x + Cucumber BDD v7.x


## Contents:
1. [Setup](#setup)
2. [Running Tests](#running-tests)
3. [Reporting](#reporting)


## Setup

First Login to JFrog

When using npm v9+ you might encounter "Web login not supported", use --auth-type=legacy flag like that to ommit this error:
```bash
    npm login --auth-type=legacy --scope=@evinced --registry=https://evinced.jfrog.io/artifactory/api/npm/restricted-npm/
```

If you have access only to bundled archive then use:
```bash
    npm i <path_to_archive>
```

Then run 
```bash
    npm i
```
to install all required dependencies

Export licensing environment variables
```bash
    export AUTH_SERVICE_ID=<serviceId>
    export AUTH_TOKEN=<token>
```

## Running Tests

You can run the Cucumber BDD tests in two ways:

1. Proceed to cucumber/v7.x directory where the tests are located and run:
```bash
    npm run wdio
```

2. Proceed to cucumber/v7.x directory where the tests are located and run:
```bash
    ./run-tests.sh
```
You can run tests in headed mode by with:
```bash
    HEADED=true ./run-tests.sh
```

## Reporting
  
Cucumber .json reports are being generated in `js/wdio/v7.x/cucumber/v7.x/reports/cucumber-json` directory.

Evinced SDK HTML and JSON reports generated using `evSaveFile()` method are available at `js/wdio/v7.x/cucumber/v7.x/reports/evReports/<reportname>.<reportformat>`.
  