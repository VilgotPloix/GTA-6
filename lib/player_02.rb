require 'byebug'


class Player
	attr_accessor :name, :pv, :attaque, :critique, :chance
	@@joueurs = []

	def initialize (nom)
		@nom = nom	
		@pv = 10
		@attaque = 2
		@critique = 3
		@@joueurs << self
		puts "Nom = #{@nom}"
		puts "pv = #{@pv}"
		puts "---------------------------------------"
	end


	def is_dead
			return @pv
	end


	def show_state
		if @pv <= 0
			return "#{@nom} est mort"
		else
			return "#{@nom} a #{pv} points de vie"
		end
	end

	def damage
		chance = [1, 2, 3, 4, 5, 6]
		@attaque = chance.sample
		@pv = (@pv - @attaque)		
		if attaque > 3 
			puts "tu lui infliges un dégat critique de #{attaque} points de dégats ! AOUCH !"
		else
			puts "tu lui inflige #{@attaque} points de dégats !!"
		end
		
	end

end


class HumanPlayer < Player

	attr_accessor :weapon_level, :xp

	def initialize (nom)
		@nom_human = nom
		@pv_human = 100
		@xp = 0
		@weapon_level = 1
		puts "nom = #{@nom_human}"
		puts "pv = #{@pv_human}"
		puts "niveau d'arme = #{weapon_level}"
		puts "---------------------------------------"
	end

	def damage_human
		chance = [1, 2, 3, 4, 5, 6]
		@attaque = chance.sample
		@pv_human = (@pv_human - @attaque)	
		puts "AIE !! Son attaque vous enlève #{attaque} points de vie !!"

	end

	def change_weapon
		chance = [1, 2, 3, 4, 5, 6]
		exemple = chance.sample
		puts "WOW ! Vous trouvez une arme de niveau #{exemple}, voulez vous la prendre ?"
		puts "Votre arme est niveau #{@weapon_level} par rapport à la nouvelle qui est de niveau #{exemple}"
		print "voulelz vous changer d'arme ? ( y/n )"
		reponse = gets.chomp
		if reponse == "y"
			@weapon_level = exemple
			puts "Bien ! Votre arme est maintenant niveau #{weapon_level}"
		else
			puts "dommage, elle avait l'air bien !"
		end
		return weapon_level
	end

	def health_pack

		chance = [1, 2, 3, 4, 5, 6]
		find = chance.sample

		print "Vous cherchez une trousse de soin !"

		if find == 1
			puts "Mince votre sac s'est ouvert et vous avez perdus tout votre inventaire..."
		end

		if find >=2 && find <= 5
			puts "Vous avez une trousse de soin, vous gagnez 50pv !"
			@pv = @pv + 50
		end

		if find == 6
			puts "Wow ! c'est une sacrée trousse de soin ca !"
			@pv_human = @pv_human + 50
		end

		return show_state
	end




	def show_state
		return "#{@nom_human} a #{@pv_human} points de vie et une arme de niveau #{@weapon_level}"
	end
#byebug
end