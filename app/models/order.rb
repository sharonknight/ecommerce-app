class Order < ActiveRecord::Base
	
  belongs_to :user

  has_many :carted_products
  has_many :products, :through => :carted_products

  SALES_TAX = 0.09
  
  def calculate_subtotal
    return product.price * quantity
  end

  def calculate_tax
    return SALES_TAX * calculate_subtotal
  end

  def calculate_total
    return calculate_subtotal + calculate_tax
  end
end