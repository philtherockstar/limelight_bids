class CreateBidRooms < ActiveRecord::Migration
  def change
    create_table :bid_rooms do |t|

      t.timestamps
    end
  end
end
