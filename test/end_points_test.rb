require 'test_helper'

class TestEndPoints < Minitest::Test

  def test_create_client
    client = BonsaiClient.create(
      url: 'http://bonsai-server.com',
      client_id: 'test',
      client_secret: 'secret',
    )
    refute_nil client
  end

end
