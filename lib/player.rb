require 'byebug'


class Player
	attr_accessor :name, :pv, :attaque, :critique, :chance


	def initialize (nom)
		@nom = nom	
		@pv = 10
		@attaque = 2
		@critique = 3
		puts "Nom = #{@nom}"
		puts "pv = #{@pv}"
	end


	def is_dead
		if @pv == 0
			return "vous êtes mort..."
		else
			return "points de vie : #{@pv}"
		end
	end


	def show_state
		return @pv
	end

	def damage
		chance = [1, 2, 3, 4, 5, 6]
		@attaque = chance.sample
		@pv = (@pv - @attaque)		
		if attaque > 3 
			puts "il lui infliges un dégat critique de #{attaque} points de dégats ! AOUCH !"
		else
			puts "Il lui inflige #{@attaque} points de dégats !!"
		end
		
	end

	def esquive
		chance = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


		if chance.sample >= 6
			puts "vous esquivez votre énnemi"
		else
			puts "votre ennemi vous mets un coup d'épé... aie"
			damage
		end
	end
#	byebug
end
