# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bonsai_client/version'

Gem::Specification.new do |s|

  s.name = BonsaiClient::NAME
  s.version = BonsaiClient::VERSION
  s.authors = ['Manu']
  s.email = ['galfus@gmail.com']
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = %q{Client for Bonsai server.}
  s.description = %q{This gem is at an early stage of development. Please do not use it already.}
  s.licenses = ['MIT']
  s.homepage = 'https://gitlab.com/galfuslab/bonsai-client'
  all_files = `git ls-files -z`.split("\x0")
  s.files = %w(bonsai_client.gemspec) + Dir["*.md", "bin/*", "lib/**/*.rb"]
  s.executables = %w(bonsai_client)
  s.require_paths = %w(lib)
  s.add_runtime_dependency 'rest-client', '~> 2.0'
  s.add_runtime_dependency 'thor', '~> 0.19'
  s.add_development_dependency 'bundler', "~> 1.12"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency 'minitest', '~> 5.0'
end
