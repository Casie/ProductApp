class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :sku, length: { is: 6 }
	validates :category, presence: true
	
end
