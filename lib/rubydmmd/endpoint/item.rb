module Rubydmmd
  module Endpoint
    module Item
      def items(**options)
        get('/affiliate/v3/ItemList', **options)
      end
    end
  end
end
