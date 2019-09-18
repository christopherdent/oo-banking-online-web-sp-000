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
  
  if valid? && status == "pending"
    if amount < sender.balance 
          self.receiver.balance = receiver.balance += amount
          self.sender.balance = sender.balance -= amount
          self.status = "complete"
        else 
          self.status = "rejected"
          "Transaction rejected. Please check your account balance."
        end 
      end 
  end 
end
    #if account.balance < @amoun