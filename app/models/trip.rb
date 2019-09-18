class Trip < ApplicationRecord
  belongs_to :route

  scope :tram, -> { joins(:route).merge(Route.tram) }
end
