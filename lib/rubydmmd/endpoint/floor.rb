module Rubydmmd
  module Endpoint
    module Floor
      def floors(**options)
        get('/affiliate/v3/FloorList', **options)
      end
    end
  end
end
