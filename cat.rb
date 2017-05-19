class Cat
  attr_accessor :name, :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      "#{@meal_time}AM"
    else
      "#{@meal_time}PM"
    end
  end

  def meow
    p "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end
end

abby = Cat.new("Abby", "hard food", 10)

felix = Cat.new("Felix", "hard food", 17)

abby.meow
