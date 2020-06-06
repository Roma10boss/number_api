# frozen_string_literal: true

#my application environment
require 'bundler/setup'
Bundler.require(:default)


require_relative './number_cli/cli.rb'
require_relative './number_cli/api.rb'
require_relative './number_cli/number.rb'
