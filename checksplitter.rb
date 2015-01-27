require "pry"

class CheckSplit
  def initialize (param_one, param_two, param_three)
    @people_amount = param_one
    @meal_cost = param_two
    @tip_amount = param_three
  end
  
  def meal_and_tip
    @tip_amount + @meal_cost
  end
  
  def price_divide
    meal_and_tip / @people_amount
  end
end
