class Ability
end

class HealthAbility < Ability
  property max_health : Int32
  property health     : Int32

  def initialize(@max_health : Int32, @health : Int32)
  end
end

class MovementAbility < Ability
  property x : Float32
  property y : Float32

  def initialize(@x : Float32 = 0, @y : Float32 = 0)
  end
end

class SpellCastAbility < Ability
  property max_mana
  property mana

  def initialize(@max_mana : Int32, @mana : Int32)
  end
end

class MeleeFightAbility < Ability
  property power

  def initialize(@power : Int32)
  end
end
