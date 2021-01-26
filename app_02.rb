require_relative 'lib/player_02.rb'
require 'byebug'



def script


	richard = HumanPlayer.new("richou")

	josé = Player.new("josé")
	jiselle = Player.new("jiselle")


	puts " "
	puts " --------------------------------------------------------------------"
	puts " |                    Bienvenue dans GTA VI !!!                     |"
	puts " |        faites ce que vous voulez, quand vous voulez !            |"
	puts " --------------------------------------------------------------------"
	puts " "
	puts "attaquez ces deux pov' types ! "
	puts " "
	puts " "

	while josé.is_dead >= 0 || jiselle.is_dead >= 0
		puts " "
		puts " "

		puts "voici où en sont nos personnages : "
		puts richard.show_state
		puts josé.show_state
		puts jiselle.show_state
		
		puts " "
		
		puts "que voulez vous faire ?"
		puts "a - pour choisir une meilleure arme"
		puts "s - pour vous soigner"
		puts "-------------------------------------"
		puts "1 - pour attaquer josé"
		puts "2 - pour attaquer jiselle"
		
		reponse = gets.chomp
		
		if reponse == "a"
			richard.change_weapon
		end

		if reponse == "s"
			richard.health_pack
		end

		if reponse == "1"
			josé.damage
		end

		if reponse == "2"
			jiselle.damage
		end
		

		if josé.is_dead <= 0 && jiselle.is_dead <= 0
			break
		end

		puts "maintenant josé et jiselle vous attaquent en retour"
		richard.damage_human
		richard.damage_human
	end
end

script