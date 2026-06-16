class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    if amount <= 0
      raise "Amount must be positive" 
    end

    @balance += amount
  end

  def withdraw(amount)
    if amount <= 0
      raise "Amount must be positive" 
    elsif amount > @balance
      raise "Insufficient funds" 
    end
    @balance -= amount
  end
end


account = BankAccount.new(100)

puts account.balance

account.deposit(50)
puts account.balance

account.withdraw(30)
puts account.balance