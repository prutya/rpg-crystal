class Character
  property name

  def initialize(@name : String)
    @abilities = {} of Symbol => Ability
  end

  def add_ability(key : Symbol, ability : Ability)
    @abilities[key] = ability
  end

  def get_ability(key : Symbol)
    # TODO: Handle KeyError

    @abilities[key]
  end
end

class CharacterFactory
  def create_mage(name : String)
    char = Character.new(name)

    char.add_ability(:health,      HealthAbility.new(100, 100))
    char.add_ability(:movement,    MovementAbility.new)
    char.add_ability(:spell_cast,  SpellCastAbility.new(500, 500))
    char.add_ability(:melee_fight, MeleeFightAbility.new(5))

    char
  end

  def create_warrior(name : String)
    char = Character.new(name)

    char.add_ability(:health,      HealthAbility.new(300, 300))
    char.add_ability(:movement,    MovementAbility.new)
    char.add_ability(:melee_fight, MeleeFightAbility.new(30))

    char
  end

  def create_paladin(name : String)
    char = Character.new(name)

    char.add_ability(:health,      HealthAbility.new(200, 200))
    char.add_ability(:movement,    MovementAbility.new)
    char.add_ability(:spell_cast,  SpellCastAbility.new(250, 250))
    char.add_ability(:melee_fight, MeleeFightAbility.new(20))

    char
  end
end
