# This migration comes from spree_fairground (originally 20150612160612)
class CreateSpreeFairgroundLocations < ActiveRecord::Migration
  def change
    create_table :spree_fairground_locations do |t|
      t.integer :carousel_id
      t.string :location_id

      t.timestamps null: false
    end
    add_index :spree_fairground_locations, :location_id
  end
end
