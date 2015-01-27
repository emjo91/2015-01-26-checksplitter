require "pry"

class CheckSplit
  def initialize (param_one, param_two)
    @people_amount = param_one
    @meal_cost = param_two
    @tip_amount = @meal_cost * 0.15
  end
  
  def get_tip
    @tip_amount
  end
  
  def meal_and_tip
    @tip_amount + @meal_cost
  end
  
  def price_divide
    meal_and_tip / @people_amount
  end
end

party_one = CheckSplit.new (4, 40)