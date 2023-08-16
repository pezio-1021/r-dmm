require 'r-dmm/client'
module Rdmm
  # class Error < StandardError; end

  def self.new(options = {})
    Rdmm::Client.new(options)
  end
end
