require 'rubydmmd/client'
module Rubydmmd
  # class Error < StandardError; end

  def self.new(options = {})
    Rubydmmd::Client.new(options)
  end
end
