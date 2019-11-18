class HealthAbility < Ability
  property max_health : Int32
  property health     : Int32

  def initialize(@max_health : Int32, @health : Int32)
  end
end
