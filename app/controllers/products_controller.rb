class ProductsController <
	ApplicationController

	def index
		@products = Product.all
    if params[:sort] == "discounted"
      @products = Product.where("price <?", 2)
    elsif params[:sort]== "rand"
      @products = [Product.all.sample]
    elsif params[:sort]=="Descending"
      @products = Product.order(:price =>:desc)
    elsif params[:sort]=="Ascending"
      @products = Product.order(:price =>:asc)
    elsif params[:sort]=="Category"
      @products = Product.order(:category =>:desc)
	 end
     if params[:search]
      @products = @products.where('title LIKE ?', "%" + params[:search] + "%")
     end
  end


	def show
     if params[:id] == "random"
      @product = Product.all.sample
    else @product = Product.find(params[:id])
  	end
  end

  	def new
  		@product = Product.new
  	end

  	def create
      Product.create({:title => params[:title], :price => params[:price], :description => params[:description], :user_id => current_user.id })
      flash[:success] = "Product added."
      redirect_to "/products/#{product.id}"

    end
  

  	def edit
    @product = Product.find(params[:id])

  	end

  	def update
  		@product = Product.find(params[:id])
  		@product.update({:title => params[:title], :price => params[:price], :description => params[:description]})
      flash[:success] = "Product updated.."
      redirect_to "/products/#{@product.id}"
  	end
    

  	def destroy
  		@product = Product.find(params[:id])
  		@product.destroy
      flash[:success] = "Product destroyed."
      redirect_to '/products'
  	end

    def orders

    end


end
