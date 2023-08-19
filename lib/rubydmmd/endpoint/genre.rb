module Rubydmmd
  module Endpoint
    module Genre
      def genres(**options)
        get('/affiliate/v3/GenreSearch', **options)
      end
    end
  end
end
