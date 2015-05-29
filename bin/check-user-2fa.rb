#! /usr/bin/env ruby
#
#   check-user-2fa.rb
#
# DESCRIPTION:
#   Interacts with Github API to generate metrics about repo.
#
# OUTPUT:
#
# PLATFORMS:
#   All
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: rest-client
#   gem: json
#
# USAGE:
#
#
# NOTES:
#
#
# LICENSE:
#   Copyright 2015 Yieldbot, devops@yieldbot.com
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

$:.unshift([File.expand_path(File.dirname(__FILE__)), '..', 'lib'].join('/'))
require 'sensu-plugins-github'

class CheckUser2FA < Sensu::Plugin::Check::CLI
  option :api,
         short: '-a URL',
         long: '--api URL',
         description: 'Github API URL',
         default: 'https://api.github.com'

  option :token,
         short: '-t TOKEN',
         long: '--token TOKEN',
         description: 'Github OAuth Token',
         default: SensuPluginsGithub::Auth::acquire_git_token

  option :org,
         short: '-o ORG',
         long: '--org ORG',
         description: 'Github Org',
         required: true

  def run
    puts SensuPluginsGithub::Api::api_request("/orgs/#{config[:org]}/members?filter=2fa_disabled", config[:api], config[:token])
  end
end