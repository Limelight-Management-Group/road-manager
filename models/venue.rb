class Venue < ActiveRecord::Base
  # Venue.connection
  extend Geocoder::Model::ActiveRecord
  geocoded_by :location
  after_validation :geocode #fetches the coordinates
end
