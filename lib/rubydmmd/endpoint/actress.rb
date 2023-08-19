module Rubydmmd
  module Endpoint
    module Actress
      def actresses(**options)
        get('/affiliate/v3/ActressSearch', **options)
      end
    end
  end
end
