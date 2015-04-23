require 'rails_helper'

RSpec.describe Spree::Order, type: :model do
  it { should have_one(:booking).class_name("Spree::Booking") }
end