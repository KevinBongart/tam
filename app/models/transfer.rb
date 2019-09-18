# https://developers.google.com/transit/gtfs/reference/#transferstxt
class Transfer < ApplicationRecord
  # 0 or (empty): This is a recommended transfer point between routes.
  # 1: This is a timed transfer point between two routes. The departing vehicle is expected to wait for the arriving one, with sufficient time for a rider to transfer between routes.
  # 2: This transfer requires a minimum amount of time between arrival and departure to ensure a connection. The time required to transfer is specified by min_transfer_time.
  # 3: Transfers aren't possible between routes at this location.
  module TransferTypes
    ALL = [
      RECOMMENDED = 0,
      WAIT = 1,
      REQUIRE_TIME = 2,
      IMPOSSIBLE = 3
    ]
  end


  belongs_to :from_stop, class_name: Stop.name
  belongs_to :to_stop, class_name: Stop.name

  scope :recommended, -> { where(transfer_type: TransferTypes::RECOMMENDED) }
end
