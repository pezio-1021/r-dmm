module Rubydmmd
  module Endpoint
    module Author
      def authores(**options)
        get('/affiliate/v3/AuthorSearch', **options)
      end
    end
  end
end
