class Route < ApplicationRecord
  # https://developers.google.com/transit/gtfs/reference/#routestxt
  # 0: Tram, streetcar, or light rail. Used for any light rail or street-level system within a metropolitan area.
  # 1: Subway or metro. Used for any underground rail system within a metropolitan area.
  # 2: Rail. Used for intercity or long-distance travel.
  # 3: Bus. Used for short- and long-distance bus routes.
  # 4: Ferry. Used for short- and long-distance boat service.
  # 5: Cable car. Used for street-level cable cars where the cable runs beneath the car.
  # 6: Gondola or suspended cable car. Typically used for aerial cable cars where the car is suspended from the cable.
  # 7: Funicular. Used for any rail system that moves on steep inclines with a cable traction system.
  module RouteTypes
    ALL = [
      TRAM = 0,
      SUBWAY = 1,
      RAIL = 2,
      BUS = 3,
      FERRY = 4,
      CABLE_CAR = 5,
      GONDOLA = 6,
      FUNICULAR = 7
    ]
  end

  scope :tram, -> { where(route_type: RouteTypes::TRAM) }
end
