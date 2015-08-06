# This migration comes from spree_compose (originally 20150629121519)
class AddMenuIdToSpreeComposeNavItems < ActiveRecord::Migration
  def change
    add_column :spree_compose_nav_items, :menu_id, :integer
    add_index :spree_compose_nav_items, :menu_id
  end
end
