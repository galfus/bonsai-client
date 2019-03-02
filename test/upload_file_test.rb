require 'test_helper'

class TestUploadFile < Minitest::Test

  def test_upload_file
    bonsai = BonsaiClient.create(
      url: BonsaiClient::Test::BONSAI_SERVER_URL,
      client_id: BonsaiClient::Test::CLIENT_ID
    )
    result = bonsai.upload(path: BonsaiClient::Test::SAMPLE_FILE_PATH)
    # puts '-------------'
    # p result
    refute_nil result
  end

end
