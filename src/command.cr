class Command
  def exec
  end
end

class DealDamageCommand < Command
  def initialize(@target : Character, @damage : Int32)
  end

  def exec
    target_health = @target.get_ability(:health).as(HealthAbility)
    result_health = target_health.health - @damage
    target_health.health = Math.max(0, result_health)

    puts [
      "[#{@target.name}] gets hit for",
      "#{@damage} HP".red
    ].join(" ")
  end
end

class MeleeHitCommand < Command
  def initialize(@target : Character, @source : Character)
  end

  def exec
    source_melee_fight = @source.get_ability(:melee_fight).as(MeleeFightAbility)

    puts [
      "[#{@source.name}] tries to hit [#{@target.name}] for",
      "#{source_melee_fight.@power} HP".red
    ].join(" ")

    DealDamageCommand.new(@target, source_melee_fight.@power).exec
  end
end
