class SpellCastAbility < Ability
  property max_mana
  property mana

  def initialize(@max_mana : Int32, @mana : Int32)
  end
end
