# This migration comes from spree_fairground (originally 20150611141340)
class CreateSpreeFairgroundSlides < ActiveRecord::Migration
  def change
    create_table :spree_fairground_slides do |t|
      t.integer :attachment_width
      t.integer :attachment_height
      t.integer :attachment_file_size
      t.integer :position
      t.string :attachment_content_type
      t.string :attachment_file_name
      t.datetime :attachment_updated_at
      t.string :alt
      t.integer :carousel_id
      t.timestamps null: false
      t.string :link
      t.text :body
      t.string :slide_type, default: "image"
    end
    add_index :spree_fairground_slides, :slide_type
  end
end
