class BidRoom < ActiveRecord::Base
  belongs_to :bid
  belongs_to :room
  has_many :bid_room_items
end
