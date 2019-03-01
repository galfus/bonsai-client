require 'test_helper'

class TestGemEndPoints < Minitest::Test

  def test_create_client
    client = BonsaiClient.create(
      url: 'http://bonsai-server.com'
    )
    refute_nil client
  end

end
