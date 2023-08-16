module Rdmm
  module Endpoint
    module Item
      def items(options = {})
        get('/ItemList', options)
      end
    end
  end
end