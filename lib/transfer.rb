require 'pry'


class Transfer
 attr_accessor :sender, :receiver, :amount, :status 
 
 
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  
  end 
  
  
  def valid?
    sender.valid? && receiver.valid? ? true : false
  end 
  
 
  
  def execute_transaction 
  
  if valid? && self.status == "pending"
    if amount < self.sender.balance 
          self.receiver.balance += amount 
          self.sender.balance -= amount
          self.status = "complete"
    end 
      else 
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
         
      end 
  end 
end
    #if account.balance < @amoun