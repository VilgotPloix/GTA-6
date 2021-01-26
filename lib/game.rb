require_relative 'player.rb'
require_relative '../app.rb'

def script

	puts " "
	puts "vous vous réveillez quand soudain, vous entendez au loin votre maître d'armes vous appeler."
	puts " "
	puts "HAHA SIRE	! JE VOUS ATTENDS !"
	puts " "
	puts "vous descendez voir dans la cour ce qu'il vous veut."
	puts " "
	puts "AUJOURD'HUI NOUS ALLONS VOUS ENTRAINER ! EN GARDE MA MIGNONNE ! vous dit le maître d'armes !"
	puts " "
	puts "vous vous préparez au combat."
	puts " "


	while player.show_state >= 0 || bot.show_state >= 0
		puts "Voici l'état de nos joueurs :"
		puts "Arthur a #{player.show_state} points de vie"
		puts "Caradoc a #{bot.show_state} points de vie"
		puts " "
		puts "passons au combat : "
		puts "Caradoc attaque !"
		puts player.damage
		puts "Arthur attaque à son tour : "
		puts bot.damage
		puts "Voici l'état de nos joueurs :"
		puts "Arthur a #{player.show_state} points de vie"
		puts "Caradoc a #{bot.show_state} points de vie"
		puts " "

		if player.show_state <= 0 
			puts "Caradoc à gagné ! C'est pas faux"
			break

		end
		if bot.show_state <= 0
			puts "Arthur à gagné ! Vive le roi !!!"
			break
		end
	end

end

