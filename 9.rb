class BankAccount:
  def _init_(self,inital_balance=0):
    self.balance = inital_balance

  @property
  def balance(self):
    return self._balance 

  def deposit(self,amount):
    if amount >0:
      self._balance += amount
    else: 
      raise ValueError("Deposit amount must be postive")

  def withdraw(self,amount):
    if amount <=0:
      raise ValueError("Withdrawal amount must be postitve")
    if amount > self._balance:
      raise ValueError("Insufficient Funds")
    self._balance -= amount

account = BankAccount(100)

puts (account.balance)
account.deposit(50)
puts (account.balance)
account.withdraw(30)
puts account.balance

