require 'rubydmmd/endpoint/item'
require 'rubydmmd/endpoint/floor'
require 'rubydmmd/endpoint/actress'
require 'rubydmmd/endpoint/genre'
require 'rubydmmd/endpoint/maker'
require 'rubydmmd/endpoint/series'
require 'rubydmmd/endpoint/author'

module Rubydmmd
  module Endpoint
    include Item
    include Floor
    include Actress
    include Genre
    include Maker
    include Series
    include Author
  end
end