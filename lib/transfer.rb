require 'pry'


class Transfer
 attr_accessor :sender, :receiver, :amount, :status, :name 
 
 
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  
  end 
  
  
  def valid?
    sender.valid? && receiver.valid?
  end 
  
 
  
  def execute_transaction 
  
    self.status = "pending"
    receiver.balance = receiver.balance += amount
    sender.balance = sender.balance -= amount
    self.status = "complete"
   
    if self.status = "complete"
      @amount = 0
    end 
    
    
    account = BankAccount.new(name)
    if self.valid? == false 
      p "Transaction rejected. Please check your account balance." && @status == "rejected"
      
      
    end
 
  end 
  
  
  
  
end
    #if account.balance < @amount
     # p "Transaction rejected. Please check your account balance."
    #end 