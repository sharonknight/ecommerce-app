class Product < ActiveRecord::Base
	belongs_to :vendor
	has_many :product_options
	has_many :orders
 
	def discount
		 
		if price < 200  
		"Discount item!"
		else
		 "On sale!"
	end
  end
	def tax
	  return price * 0.09
	end

	def total
		return price + tax
	end


end
