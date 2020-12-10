=begin
An Account object with public methods to display balances and withdraw funds, 
but which rely on private methods to make sure the user’s PIN 
(personal identification number) is correct before approving transactions.
Added overdraw protection and a feature to add funds.
=end

class Account
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance=100)
  @name = name
  @balance = balance
  end

  private
  def pin(pin = 1234)
  @pin = pin
  end

  def pin_error
  return "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    pin_number == @pin ? "Balance: $#{@balance}." : pin_error
  end

  def withdraw(pin_number, amount)
    if pin_number == @pin 
      @balance -= amount 
      puts "Withdrew #{amount}. New balance: $#{@balance}." 
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == @pin
    @balance += amount
    puts "Added #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def overdraw_protection(amount)
    @balance >= amount ? "How much would you like to wihtdraw?" : "Insufficient funds."
    end
  end

checking_account = Account.new("checcking", 100)