class ShirtsController < ApplicationController
	before_action :find_shirt, only: [:show, :edit, :update, :destroy]

	def index
		@shirts = Shirt.all.order("created_at DESC")
	end 

	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new(shirt_params)

		if @shirt.save
			redirect_to @shirt, notice: "Succesfully created"
		else
			render 'new'
		end

	end 

	def show 	
	end

	def edit
	end

	def update
		if @shirt.update(shirt_params)
			redirect_to @shirt, notice: "Shirt was succesfully updated"
		else
			render 'edit'
		end
	end

	def destroy
		@shirt.destroy
		redirect_to root_path
	end




	private

	def shirt_params
		params.require(:shirt).permit(:name, :price)
	end

	def find_shirt
		@shirt = Shirt.find(params[:id])
	end


end
