class CharacterFactory
  def create_mage(name : String)
    Character.new(name).tap do |char|
      char.add_ability(:health,      HealthAbility.new(100, 100))
      char.add_ability(:movement,    MovementAbility.new)
      char.add_ability(:spell_cast,  SpellCastAbility.new(500, 500))
      char.add_ability(:melee_fight, MeleeFightAbility.new(5))
    end
  end

  def create_warrior(name : String)
    Character.new(name).tap do |char|
      char.add_ability(:health,      HealthAbility.new(300, 300))
      char.add_ability(:movement,    MovementAbility.new)
      char.add_ability(:melee_fight, MeleeFightAbility.new(30))
    end
  end

  def create_paladin(name : String)
    Character.new(name).tap do |char|
      char.add_ability(:health,      HealthAbility.new(200, 200))
      char.add_ability(:movement,    MovementAbility.new)
      char.add_ability(:spell_cast,  SpellCastAbility.new(250, 250))
      char.add_ability(:melee_fight, MeleeFightAbility.new(20))
    end
  end
end
