module BonsaiClient
  # Client for a Bonsai server.
  class Client

    def initialize(opts = {})
      @url = opts[:url] || ''
      @client_id = opts[:client_id] || ''
    end

    def upload(opts = {})
      # puts '------ upload'
      # p opts
      # puts upload_url
      {}
    end

    private

    def upload_url
      "#{@url}/api/#{@client_id}/upload"
    end

  end
end

