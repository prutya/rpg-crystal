require "colors"

require "./ability"
require "./character"
require "./command"

my_char    = CharacterFactory.new.create_paladin("Nomad")
other_char = CharacterFactory.new.create_warrior("Kubernetes")

my_health     = my_char.get_ability(:health).as(HealthAbility)
my_spell_cast = my_char.get_ability(:spell_cast).as(SpellCastAbility)
my_movement   = my_char.get_ability(:movement).as(MovementAbility)

puts [
  "[#{my_char.name}]",
  "❤ #{my_health.health}/#{my_health.max_health}".red,
  "☾ #{my_spell_cast.mana}/#{my_spell_cast.max_mana}".cyan
].join(" ")

MeleeHitCommand.new(my_char, other_char).exec

puts [
  "[#{my_char.name}]",
  "❤ #{my_health.health}/#{my_health.max_health}".red,
  "☾ #{my_spell_cast.mana}/#{my_spell_cast.max_mana}".cyan
].join(" ")
