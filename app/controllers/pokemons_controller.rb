class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to '/'
	end
	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		trainer_path = @pokemon.trainer
		@pokemon.save

		if @pokemon.health <= 0
			@pokemon.destroy
		end 

		redirect_to trainer_path(id: trainer_path)
	end

	def new
		@pokemon = Pokemon.new
	end 

	def create
		@pokemon = Pokemon.new parameters
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer_id = current_trainer.id
        if @pokemon.save
			redirect_to trainer_path(id: current_trainer.id)
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end

        
	end

	private
    def parameters
        params.require(:pokemon).permit(:name)
    end







end
