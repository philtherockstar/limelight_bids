class CreateTemplateRoomItems < ActiveRecord::Migration
  def change
    create_table :template_room_items do |t|

      t.timestamps
    end
  end
end
