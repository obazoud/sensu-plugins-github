## Sensu-Plugins-github

[ ![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-github.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-github)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-github.svg)](http://badge.fury.io/rb/sensu-plugins-github)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-github/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-github)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-github/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-github)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-github.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-github)
[ ![Codeship Status for sensu-plugins/sensu-plugins-github](https://codeship.com/projects/107b69f0-cabf-0132-6fa6-22c60209e864/status?branch=master)](https://codeship.com/projects/75587)

## Functionality

**github-repo-metrics**

Interacts with Github API to generate metrics about repo.

## Files
 * bin/check-github-rate-limit.rb
 * bin/check-user-2fa.rb
 * bin/metrics-github-repo.rb

## Usage

Your github token must be placed in *~/.ssh/git_token*, you should not be entering secure items on the commandline.

## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)

## Notes
