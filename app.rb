require_relative 'lib/player.rb'
#require_relative 'lib/game.rb'

Arthur = Player.new("Arthur")
Caradoc = Player.new("Caradoc")

def script
	while Arthur.show_state >= 0 || Caradoc.show_state >= 0
		puts "Voici l'état de nos joueurs :"
		puts "Arthur a #{Arthur.show_state} points de vie"
		puts "Caradoc a #{Caradoc.show_state} points de vie"
		puts " "
		puts "passons au combat : "
		puts "Caradoc attaque !"
		puts Arthur.damage
		puts "Arthur attaque à son tour : "
		puts Caradoc.damage
		puts "Voici l'état de nos joueurs :"
		puts "Arthur a #{Arthur.show_state} points de vie"
		puts "Caradoc a #{Caradoc.show_state} points de vie"
		puts " "

		if Arthur.show_state <= 0 
			puts "Caradoc à gagné ! C'est pas faux"
			break

		end
		if Caradoc.show_state <= 0
			puts "Arthur à gagné ! Vive le roi !!!"
			break
		end
	end
end

script