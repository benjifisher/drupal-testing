# Drupal Testing

I set up this repository to help with testing Drupal modules for coding
standards and Drupal 10 compatibility.

The repository is based on `drupal/recommended-project` with some parts borrowed
from Matt Glaman's
[Drupal & Nightwatch.js training](https://github.com/bluehorndigital/drupal-testing-workshop)

## Main features

- DDev configuration (mostly standard)
- Upgrade Status module
- Custom DDev commands `phpunit`, `phpcs`, `phpcbf`
- Docker config to support PHPUnit testing

TODO: Add site configuration so that you can install from config. For now, use
`ddev drush si standard`
and
`ddev drush en upgrade_status`.

## Usage

This section needs to be expanded.

Get the site running:

```bash
ddev start
ddev drush si standard
ddev drush en upgrade_status
ddev drush uli
```

Install and enable the module you want to test, using the latest development
branch. For example,

```bash
ddev start
ddev composer require drupal/advancedqueue:dev-1.x
ddev drush en advancedqueue
```

Do not commit the changes to `composer.json` nor `composer.lock` unless you have
other plans for your copy of this repository.

The module should be installed as a git repository under `web/modules/contrib/`.
From that directory, you can add additional remotes, apply patches, create
branches, and so on.

You can view the Upgrade Status report at
[https://drupal-project.ddev.site/admin/reports/upgrade-status](https://drupal-project.ddev.site/admin/reports/upgrade-status)
