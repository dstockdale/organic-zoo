module Spree
  Order.class_eval do
    has_one :booking, class_name: 'Spree::Booking'
  end
end