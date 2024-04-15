# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

user1 = User.new("lolilol@gmail.com", 15)
my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts my_event.postpone_24h
puts "L'heure de fin : #{my_event.end_date}"
puts "L'événement est-il passé ? #{my_event.is_past?}"
puts "L'événement est-il futur ? #{my_event.is_future?}"
puts "Est ce que c'est pour bientôt? #{my_event.is_soon?}"
puts my_event
