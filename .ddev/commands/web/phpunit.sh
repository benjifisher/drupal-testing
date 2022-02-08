#!/bin/bash

## Description: Run PHPUnit
## Usage: phpunit [flags] [args]
## Example: "ddev phpunit --group big_pipe" or "ddev phpunit web/core/modules/action"

/var/www/html/vendor/bin/phpunit -c /var/www/html/web/core $@
