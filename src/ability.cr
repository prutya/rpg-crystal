class Ability
end

class HealthAbility < Ability
  def initialize(@max_health : Int32, @health : Int32)
  end
end

class MovementAbility < Ability
  def initialize(@x : Float32 = 0, @y : Float32 = 0)
  end

  def move_to(x : Float32, y : Float32)
    puts "Moving from [#{@x}, #{@y}] to [#{x}, #{y}]"

    @x = x
    @y = y
  end
end

class SpellCastAbility < Ability
  def initialize(@max_mana : Int32, @mana : Int32)
  end
end

class MeleeFightAbility < Ability
  def initialize(@power : Int32)
  end
end
