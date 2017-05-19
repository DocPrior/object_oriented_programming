class Bankaccount
  attr_accessor :balance, :interest_rate
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance = amount + balance
  end

  def withdraw(amount)
    @balance = balance - amount
  end

  def gain_interest
    @balance = (balance * interest_rate) + balance
  end
end

account1 = Bankaccount.new(126, 0.05)

puts "Account info: $#{account1.balance}balance, #{account1.interest_rate}% interest."

puts "Deposited $#{account1.deposit(100)}."

puts "Withdrew $#{account1.withdraw(100)}."

puts "Balance with interest added is equal to $#{account1.gain_interest}."
