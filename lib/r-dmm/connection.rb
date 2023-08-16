require 'faraday'
require 'faraday_middleware'

module Rdmm
  module Connection
    def get(path, **params)
      request(:get, path, params)
    end

    private

    def request(method, path, params)
      response = connection.public_send(method, path, credentials.merge(params))

      response.body
    end

    def connection
      @connection ||= Faraday.new(url: @url) do |c|
        c.request :json
        c.response :json, content_type: /\bjson$/
        c.adapter Faraday.default_adapter
        c.headers['User-Agent'] = "r-dmm Ruby Gem #{VERSION} (#{RUBY_ENGINE}#{RUBY_VERSION})"
      end
    end

    def credentials
      {
        api_id:       @api_id,
        affiliate_id: @affiliate_id,
      }
    end
  end
end