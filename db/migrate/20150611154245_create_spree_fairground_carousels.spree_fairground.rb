# This migration comes from spree_fairground (originally 20150608135637)
class CreateSpreeFairgroundCarousels < ActiveRecord::Migration
  def change
    create_table :spree_fairground_carousels do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :spree_fairground_carousels, :name, unique: true
  end
end
