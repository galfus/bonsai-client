require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/bonsai_client'

# Report with color.
Minitest::Reporters.use! [
  Minitest::Reporters::SpecReporter.new
]

# Initialize default test settings
module BonsaiClient
  module Test
    BASE_PATH ||= File.expand_path('../..', __FILE__).freeze
  end
end
