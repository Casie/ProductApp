class ProductsController < ApplicationController

	def index
		@products_grid = initialize_grid(Product)
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			flash[:success] = "Product updated"
			redirect_to(:action=>'index')
		else
			flash[:success] = "Incorrect information provided, please try again."
			redirect_to(:action=>'edit')
		end
	end

	private

	def product_params
		params.require(:product).permit(:name, :sku, :category)
	end

end
