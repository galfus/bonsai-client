module BonsaiClient
  # Client for a Bonsai server.
  class Client

    def initialize(opts = {})
      @url = opts[:url] || ''
      @client_id = opts[:client_id] || ''
    end

    def upload(opts = {})
      path = opts[:path] || ''
      raise_no_file_path! if path.empty?
      response = RestClient.post(
        upload_url,
        file: File.new(path, 'rb')
      )
      JSON.parse(response.to_str, symbolize_names: true)
    end

    private

    def raise_no_file_path!
      raise 'No file path'
    end

    def upload_url
      "#{@url}/api/client/#{@client_id}/upload"
    end

  end
end

