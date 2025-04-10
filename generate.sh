#!/bin/bash
set -e

if ! test -f ../acaisia-marketplace/spec.client.yaml; then
  echo "Marketplace OpenAPI spec is expected to be at ../acaisia-marketplace/spec.client.yaml"
fi

if ! command -v openapi-generator-cli &> /dev/null
then
    # If openapi-generator-cli does not exist in path we will download it.
    if [[ ! -f openapi-generator-cli ]]
    then
        echo "Installing openapi-generator-cli using NPM"
        npm install @openapitools/openapi-generator-cli -g
        if [[ ! -f openapi-generator-cli ]]
        then
            echo "openapi-generator-cli could not be downloaded or installed correctly. Exiting..."
            exit 1
        fi
    fi
fi


## Check for PHP
if ! command -v php &> /dev/null
then
    echo "PHP is not installed. Please install it using your OS package manager."
    exit 1
fi
## Check for PHP DOM and YAML extensions.
if [ $(php -m | grep -w -c "dom") -ne 1 ]
then
    echo "The PHP DOM extension is not installed. Please install the php-xml or php-dom package using your OS package manager."
    echo "on ubuntu this is in \"php8.1-xml\" currently"
    exit 1
fi

if [ $(php -m | grep -w -c "yaml") -ne 1 ]
then
    echo "The PHP \"YAML\" extension is not installed. Please install the php-yaml package using your OS package manager."
    echo "on ubuntu this is in \"php8.1-yaml\" currently"
    exit 1
fi

## Check for composer
if ! command -v composer &> /dev/null
then
    echo "Composer is not installed. Please install it using your OS package manager."
    echo "ex:  sudo apt-get update && sudo apt-get install composer"
    exit 1
fi

openapi-generator-cli generate
#openapi-generator-cli generate -i ../acaisia-marketplace/spec.client.yaml -g php -o .
#--additional-properties=composerPackageName=team-acaisia/acaisia-marketplace-client-php,developerOrganizationUrl=https://acaisia.com,licenseName=MIT,packageName=Acaisia Marketplace Client PHP,apiPackage=AcaisiaMarketplaceClient
composer install
