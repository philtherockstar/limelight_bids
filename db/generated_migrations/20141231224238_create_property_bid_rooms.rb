class CreatePropertyBidRooms < ActiveRecord::Migration
  def change
    create_table :property_bid_rooms do |t|

      t.timestamps
    end
  end
end
