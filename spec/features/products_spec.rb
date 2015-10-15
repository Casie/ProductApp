require "rails_helper"
require 'spec_helper'

describe "index" do

  it "renders the product table" do
    visit "/"
    expect(page).to have_content("ID")
    expect(page).to have_content("Name")
    expect(page).to have_content("Name")
  end
end

describe Product do

	it "is valid with a name, sku and category" do
		product = Product.new(
		name: 'Product2000',
	 	sku: 999123,
		category: 'Books')
		expect(product).to be_valid
	end

	it "is invalid without a name" do
		product = Product.new(name: nil)
		product.valid?
		expect(product.errors[:name]).not_to include(["can't be blank"])
	end

	it "is invalid without a sku" do
		product = Product.new(sku: nil)
		product.valid?
		expect(product.errors[:sku]).not_to include(["is the wrong length (should be 6 characters)"])
	end

	it "is invalid without a category" do
		product = Product.new(category: nil)
		product.valid?
		expect(product.errors[:category]).not_to include(["can't be blank"])
	end
end