def require_all(path)
  glob = File.join(__dir__, path, '*.rb')
  Dir[glob].sort.each do |f|
    require f
  end
end

# stdlib
require 'fileutils'
require 'ostruct'
require 'json'
require 'rest-client'
require_all 'bonsai_client'

module BonsaiClient

  # Create a new client for a Bonsai server.
  #
  # @param [Hash] opts Otions to create the client.
  # @option opts [String] :url Bonsai server URL (such as https://bonsai-server.com)
  # @option opts [String] :client_id Unique ID for each client
  #
  # @return [Client]
  def self.create(opts = {})
    Client.new(opts)
  end

  # Extract file checksum from response data.
  #
  # @return [String]
  def self.checksum_from_response(response)
    response[:data][:file_checksum]
  end
  
end
