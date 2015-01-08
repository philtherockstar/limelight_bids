class CreateBidRoomItems < ActiveRecord::Migration
  def change
    create_table :bid_room_items do |t|

      t.timestamps
    end
  end
end
