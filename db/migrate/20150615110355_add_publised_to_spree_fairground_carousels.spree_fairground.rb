# This migration comes from spree_fairground (originally 20150615051939)
class AddPublisedToSpreeFairgroundCarousels < ActiveRecord::Migration
  def change
    add_column :spree_fairground_carousels, :published, :boolean, default: false
  end
end
