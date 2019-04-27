class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

def valid?
  @sender.valid?
  @receiver.valid?
end

def execute_transaction
if @status != "complete"
  if @sender.valid?
    @sender.withdraw(amount)
    @receiver.deposit(amount)
    @status = "complete"
  else
    @status = "rejected"
  end
end

end

def reverse_transfer
end



end
