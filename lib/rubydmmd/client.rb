require 'rubydmmd/connection'
require 'rubydmmd/endpoint'

module Rubydmmd
  class Client
    include Connection
    include Endpoint

    BASE_URL = 'https://api.dmm.com'

    def initialize(options = {})
      @api_id = (ENV['DMM_API_ID'] || options[:api_id])
      @affiliate_id = (ENV['DMM_AFFILIATE_ID'] || options[:affiliate_id])
      @url = BASE_URL
    end
  end
end