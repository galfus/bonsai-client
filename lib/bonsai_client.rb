def require_all(path)
  glob = File.join(__dir__, path, "*.rb")
  Dir[glob].sort.each do |f|
    require f
  end
end

# stdlib
require "fileutils"
require "ostruct"
require_all "bonsai_client"

module BonsaiClient

  # Client for a Bonsai server.
  #
  # @return [Client]
  def self.create(opts = {})
    Client.new(opts)
  end
  
end
