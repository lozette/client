#!/usr/bin/env ruby
require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'httparty'
  gem 'rspec'
end

class Client
  def initialize(url)
    @url = url
  end

  def call
    HTTParty.get(@url)
  end
end

client = Client.new('https://simpledebit.gocardless.io/health_check')
client.call
