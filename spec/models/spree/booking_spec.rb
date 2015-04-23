require 'rails_helper'

RSpec.describe Spree::Booking, type: :model do
  it { should belong_to(:spree_order).class_name('Spree::Order') }
end
