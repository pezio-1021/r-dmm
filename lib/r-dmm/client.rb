require 'r-dmm/connection'
require 'r-dmm/endpoint'

module Rdmm
  class Client
    include Connection
    include Endpoint

    BASE_URL = 'https://api.dmm.com/affiliate/v3'

    def initialize(options = {})
      @api_id = (ENV['DMM_API_ID'] || options[:api_id])
      @affiliate_id = (ENV['DMM_AFFILIATE_ID'] || options[:affiliate_id])
    end
  end
end