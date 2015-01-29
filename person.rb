class Person
  
  attr_reader :name, :spending_amount
  
  def initialize(name)
    @name = name
    @spending_amount = 0
  end 
  
  def spend (amount)
    @spending_amount += amount
  end
end