# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bonsai_client/version'

Gem::Specification.new do |s|

  s.name = BonsaiClient::NAME
  s.version = BonsaiClient::VERSION
  s.authors = ["Manu"]
  s.email = ["galfus@gmail.com"]
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = %q{Client for a Bonsai server.}
  s.description = %q{This gem is at an early stage of development. Please do not use it already.}
  s.licenses = ['MIT']
  s.homepage = "https://gitlab.com/galfuslab/bonsai-client"
  all_files = `git ls-files -z`.split("\x0")
  s.files = all_files
    .reject { |f| f.match(%r{^(test|spec|features|doc|tmp|pkg)/}) }
  s.executables = all_files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.bindir        = "exe"
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'rest-client', '~> 2.0'
  s.add_development_dependency 'bundler', "~> 1.12"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency 'minitest', '~> 5.0'
end
