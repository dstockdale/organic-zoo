class Spree::Booking < ActiveRecord::Base
  belongs_to :spree_order, class_name: 'Spree::Order'
end