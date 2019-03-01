require 'test_helper'

class TestVersion < Minitest::Test

  def test_version
    refute_nil BonsaiClient::VERSION
  end

end
