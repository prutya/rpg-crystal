class CharacterClass
  def initialize(@name : String)
  end
end

class Character
  def initialize(@name : String, @char_class : CharacterClass)
  end
end

class_paladin = CharacterClass.new("Paladin")
char_kubernetes = Character.new("Kubernetes", class_paladin)

puts "#{char_kubernetes.@name} is a #{char_kubernetes.@char_class.@name}."
