class Player
  attr_accessor :gold_coins, :health_points, :lives
  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
       @lives -= 1
       @health_points += 10
    end
    if @lives == 0
      restart
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end
end

player1 = Player.new

puts "level_up = #{player1.level_up} lives"

10.times do
  player1.collect_treasure
end

puts "after collect_treasure x10: #{player1.gold_coins} coins"

# player1.do_battle(2)
#
# puts  "after battle(2): #{player1.health_points} hit points"

7.times do
  player1.do_battle(10)
end

puts "after battle(10): #{player1.inspect}"

puts "testing restart: #{player1.restart} #{player1.inspect}"
