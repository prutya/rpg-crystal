class MeleeHitCommand < Command
  def initialize(@target : Character, @source : Character)
  end

  def exec
    source_melee_fight = @source.get_ability(:melee_fight).as(MeleeFightAbility)

    puts [
      "[#{@source.name}] tries to hit [#{@target.name}] for",
      "#{source_melee_fight.@power} HP".colorize(:red)
    ].join(" ")

    DealDamageCommand.new(@target, source_melee_fight.@power).exec
  end
end
