class Character
  property name

  def initialize(@name : String)
    @abilities = {} of Symbol => Ability
  end

  def add_ability(key : Symbol, ability : Ability)
    @abilities[key] = ability
  end

  def get_ability(key : Symbol)
    @abilities[key]
  end
end
