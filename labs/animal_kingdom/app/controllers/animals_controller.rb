class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
	end

	def show
		animal_id = params[:id]
		@animal = Animal.find(animal_id)
	end

	def new
		@animal = Animal.new	
	end

	def edit
		@animal = Animal.find(params[:id]) #pulls id from URL, find it in the db, and put it in @animal
	end

	def create
		@animal = Animal.new(params[:animal])
		if @animal.save
			redirect_to animals_path
		else
			render :new #means show the html for new
		end
	end

		def update
			@animal = Animal.find(params[:id])
			if @animal.update_attributes(params[:animal])
				redirect_to @animal
			else 
				render :edit
			end
		end

		def destroy
			animal = Animal.find(params[:id])
			animal.delete
			redirect_to animals_path
		end
end
