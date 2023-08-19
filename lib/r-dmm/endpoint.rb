require 'r-dmm/endpoint/item'
require 'r-dmm/endpoint/floor'
require 'r-dmm/endpoint/actress'
require 'r-dmm/endpoint/genre'
require 'r-dmm/endpoint/maker'
require 'r-dmm/endpoint/series'
require 'r-dmm/endpoint/author'

module Rdmm
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