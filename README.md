# Docker SoapUI

> Docker container with SoapUI that runs test suites / cases

## How to Use

Run your test by running this in your project directory and changing the name of your SoapUI test script:

`$ docker run -it --rm -v $(pwd):/srv/app:Z aaronogorka/soapui testrunner.sh -r ./my-test-script.xml`

You can see all available flags for `testrunner.sh` with the following command:

`docker run -it --rm aarongorka/soapui testrunner.sh`
