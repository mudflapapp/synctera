# -*- encoding: utf-8 -*-

=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "synctera/version"

Gem::Specification.new do |s|
  s.name        = "synctera"
  s.version     = Synctera::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Synctera API Ruby Gem"
  s.description = "This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'
  s.add_runtime_dependency 'marcel'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
