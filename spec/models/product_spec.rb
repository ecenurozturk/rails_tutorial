require 'rails_helper'

RSpec.describe Product, type: :model do
before do
  @product = build(:product,price: nil)
  end
  it "price should not eq to nil" do
    expect(@product.errors).to be
  end
end
