class MovementAbility < Ability
  property x : Float32
  property y : Float32

  def initialize(@x : Float32 = 0, @y : Float32 = 0)
  end
end
