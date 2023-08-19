module Rdmm
  module Endpoint
    module Maker
      def makers(**options)
        get('/affiliate/v3/MakerSearch', **options)
      end
    end
  end
end
