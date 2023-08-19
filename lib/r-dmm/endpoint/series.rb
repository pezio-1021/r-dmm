module Rdmm
  module Endpoint
    module Series
      def series(**options)
        get('/affiliate/v3/SeriesSearch', **options)
      end
    end
  end
end
