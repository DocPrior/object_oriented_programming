class Cat
  attr_accessor :name, :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time < 12
      puts "#{meal_time}AM"
    else
      puts "#{meal_time}PM"
    end
  end

end

abby = Cat.new("Abby", "hard", 10)

felix = Cat.new("Felix", "hard", 17)
