require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"
puts "Appuyez sur entrée pour démarrer le jeu !"
gets

puts "Quel est le nom de votre joueur ?"
print "> "
user_name = gets.chomp
user = HumanPlayer.new(user_name)
puts "Votre personnage s'appelle #{user.name} le barbare"
bot1 = Player.new("Minus")
bot2 = Player.new("Cortex")

enemies = []
enemies << bot1 << bot2

puts "Bienvenue #{user_name} le barbare !"
puts "Un Minus et un Cortex sauvages sont apparus... En garde ⚔️ !"
puts "Que le combat commence ☠️ ☠️ "

while user.life_points > 0 && (bot1.life_points > 0 || bot2.life_points > 0) do

  puts "Quelle action veux-tu effectuer ? 𓂸 "

	puts "_________________________________"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts " "
  puts "attaquer un joueur en vue :"
  puts "0 - Josiane a #{bot1.life_points} points de vie"
  puts "1 - José a #{bot2.life_points} points de vie"
	puts "_________________________________"


  while value != "a" || "s" || "0" || "1" || "A" || "S" do
    puts "Choisissez votre action"
    value = gets.chomp
  end
  puts "test"
end
