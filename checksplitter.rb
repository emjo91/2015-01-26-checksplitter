require "pry"

class CheckSplit
  def initialize (param_one, param_two)
    @people_amount = param_one
    @meal_cost = param_two
    @tip_amount = @meal_cost * 0.15
  end
  
  def get_tip (param_three)
    @tip_amount = param_three
  end
  
  def set_tip
    @tip_amount
  end
  
  def get_people_amount
    @people_amount
  end 
  
  def set_people_amount
    @people_amount
  end
  
  def set_meal_cost
    @meal_cost
  end
  
  def meal_and_tip
    @tip_amount + @meal_cost
  end
  
  def price_divide
    meal_and_tip / @people_amount
  end
end

party_one = CheckSplit.new(4, 40.35)
party_one.get_tip(15.15)
puts "Since your meal is $#{party_one.set_meal_cost}, and there are #{party_one.set_people_amount} of you, and you're tipping $#{party_one.set_tip}..."
puts "...that means you each owe $#{party_one.price_divide}."
puts
party_two = CheckSplit.new(6, 122.64)
puts "Since your meal is $#{party_two.set_meal_cost}, and there are #{party_two.set_people_amount} of you, and you're tipping $#{party_two.set_tip}..."
puts "...that means you each owe $#{party_two.price_divide}."

#seems to work fine, just need to round out those decimals...

binding.pry