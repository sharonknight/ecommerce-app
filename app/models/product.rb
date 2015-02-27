class Product < ActiveRecord::Base
belongs_to :vendor
  has_many :product_options
  has_many :orders
  
  has_many :categorized_products
  has_many :categories, :through => :categorized_products

  has_many :carted_products
  has_many :orders, :through => :carted_products

  validates :price, numericality: {greater_than: 0},
	prescence: true

  validates :title, prescence: true, uniqueness: true,

  def sale_message
    if price > 15
      return "On sale!"
    else
      return "Discounted item!"
    end
  end
  
  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
 end

  # def title
  # end

  # def category
  # end

  # def price
  #   #pulls price from db
  # end










	