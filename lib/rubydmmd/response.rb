require 'active_support/core_ext/hash/keys'

module Rubydmmd
  class Response
    def initialize(faraday_response)
      @response = faraday_response
    end

    attr_reader :response

    def result
      body = response.body.deep_symbolize_keys
      body[:result]
    end
  end
end
