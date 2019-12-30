require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :transfer, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
<<<<<<< HEAD
=======
  
>>>>>>> 8d3633fd9dd8d13ea29a047a2d4f28374541d145
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
<<<<<<< HEAD
    if self.valid? == false || @sender.balance < amount
      @status = "rejected"
        "Transaction rejected. Please check your account balance."
    elsif 
      @status != "complete"
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"
    end
  end
  
  def reverse_transfer
    if @status == "complete"
        @sender.balance += amount
        @receiver.balance -= amount
        @status = "reversed"
    end
=======
      if @status != "complete" && @sender.valid?
        
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"
        
      elsif
        "Transaction rejected. Please check your account balance."
      end
      
>>>>>>> 8d3633fd9dd8d13ea29a047a2d4f28374541d145
  end
  
end
