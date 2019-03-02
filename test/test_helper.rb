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
    SAMPLE_FILE_PATH = "#{BASE_PATH}/test-data/sample.jpg" 
    BONSAI_SERVER_URL = ENV['BONSAI_SERVER_URL'].to_s
    CLIENT_ID = ENV['BONSAI_CLIENT_ID'].to_s
  end
end
