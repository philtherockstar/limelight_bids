class CreateBusinessCities < ActiveRecord::Migration
  def change
    create_table :business_cities do |t|

      t.timestamps
    end
  end
end
