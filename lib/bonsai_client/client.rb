module BonsaiClient
  # Client for a Bonsai server.
  class Client

    # @param [Hash] opts Otions to create the client.
    # @option opts [String] :url Bonsai server URL (such as https://bonsai-server.com)
    # @option opts [String] :client_id Unique ID for each client.
    # @option opts [String] :client_id Client secret.
    def initialize(opts = {})
      @url = opts[:url] || ''
      @client_id = opts[:client_id] || ''
      @client_secret = opts[:client_secret] || ''
    end

    # Upload a file.
    #
    # @param [Hash] opts Otions to upload a file.
    # @option opts [String] :path File path.
    #
    # @return [Hash] Response from Bonsai server.
    def upload(opts = {})
      path = opts[:path] || ''
      raise_no_file_path! if path.empty?
      response = RestClient.post(
        upload_url,
        client_secret: @client_secret,
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

