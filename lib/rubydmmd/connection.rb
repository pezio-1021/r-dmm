require 'faraday'
require 'faraday_middleware'
require 'rubydmmd/error'
require 'rubydmmd/response'

module Rubydmmd
  module Connection
    def get(path, **params)
      request(:get, path, **params)
    end

    private

    def request(method, path, **params)
      response = connection.public_send(method, path, credentials.merge(params))

      error = Error.from_response(response)
      raise error if error

      Response.new(response)
    end

    def connection
      @connection ||= Faraday.new(url: @url) do |c|
        c.request :json
        c.response :json, content_type: /\bjson$/
        c.adapter Faraday.default_adapter
        c.headers['User-Agent'] = 'rubydmmd Ruby Gem'
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
