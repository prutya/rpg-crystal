require "colors"

require "./ability"
require "./character"

my_char = CharacterFactory.new.create_paladin("Prutya")

health     = my_char.get_ability(:health).as(HealthAbility)
spell_cast = my_char.get_ability(:spell_cast).as(SpellCastAbility)
movement   = my_char.get_ability(:movement).as(MovementAbility)

puts "#{my_char.@name}"
puts "#{movement.@x}, #{movement.@y}"
puts "❤ #{health.@health}/#{health.@max_health}".red
puts "☾ #{spell_cast.@mana}/#{spell_cast.@max_mana}".blue
