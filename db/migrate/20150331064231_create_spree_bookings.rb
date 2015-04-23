class CreateSpreeBookings < ActiveRecord::Migration
  def change
    create_table :spree_bookings do |t|
      t.integer :order_id
      t.text :note
      t.date :date
      t.string :time

      t.timestamps null: false
    end
  end
end
