class ProductsController < ApplicationController
  before_action :authenticate_admin!, :only => [:edit, :destroy]
  def index
    #/products?search=chair
    @products = Product.all
    if params[:filter] == "discount"
      @products = @products.where("price <= ?", 5)
    end
    if params[:sort]
      @products = @products.order(params[:sort] => params[:direction])
    end
    if params[:category]
      category = Category.find_by(:name => params[:category])
      @products = category.products
      # @products = Category.find_by(:name => params[:category]).products
    end
    if params[:search]
      @products = @products.where('title LIKE ?', "%" + params[:search] + "%")
    end
  end

  def show
    @product_ids = Product.all.pluck(:id)
    if params[:id] == "random"
      @product = Product.find(@product_ids.sample)
    else
      @product = Product.find(params[:id])
    end
  end

  def new
    @product = Product.new #JUST A PLACEHOLDER!
  end

  def create
    @product = Product.new(:title => params[:title], :price => params[:price], :description => params[:description], :image => params[:image])
    if @product.save
      flash[:message] = "Product created!"
      redirect_to "/products/#{@product.id}"
    else
      flash[:info] = "Something was wrong with your form"
      render "new"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:warning] = "Product deleted!"
    redirect_to '/'
  end

end