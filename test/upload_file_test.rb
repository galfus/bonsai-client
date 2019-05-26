require 'test_helper'

class TestUploadFile < Minitest::Test

  def test_upload_file
    bonsai = BonsaiClient.create(
      url: BonsaiClient::Test::BONSAI_SERVER_URL,
      client_id: BonsaiClient::Test::CLIENT_ID,
      client_secret: BonsaiClient::Test::CLIENT_SECRET
    )
    response = bonsai.upload(path: BonsaiClient::Test::SAMPLE_FILE_PATH)
    assert response[:success]
    assert_equal BonsaiClient::Test::SAMPLE_CHECKSUM, BonsaiClient.checksum_from_response(response)
  end

end
