class DealDamageCommand < Command
  def initialize(@target : Character, @damage : Int32)
  end

  def exec
    target_health = @target.get_ability(:health).as(HealthAbility)
    result_health = target_health.health - @damage
    target_health.health = Math.max(0, result_health)

    puts [
      "[#{@target.name}] gets hit for",
      "#{@damage} HP".colorize(:red)
    ].join(" ")
  end
end
