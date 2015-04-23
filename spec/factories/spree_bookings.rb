FactoryGirl.define do
  factory :spree_booking, :class => 'Spree::Booking' do
    order_id 1
    note "MyText"
    date "2015-03-31"
    time "MyString"
  end

end
