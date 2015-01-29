require "pry"
# Class: CheckSplit
#
# Splits the check evenly for any given amount of people.
#
# Attributes:
# @people_amount - Integer: Gathers the number of people in a group.
# @meal_cost     - Integer: Gathers how much the meal costs.
# @tip_amount    - Integer: Gathers how much the tip is.
#
# Public Methods:
# #initialize
# #set_tip
# #get_tip
# #get_people_amount
# #get_meal_cost
# #meal_and_tip
# #price_divide

#second class
class CheckSplit
  def initialize (meal_cost, tip, people_amount)
    @people_amount = people_amount
    @meal_cost = meal_cost
    @tip = meal_cost * (tip * 0.01)
  end

  attr_accessor :tip
  
  attr_reader :people_amount, :meal_cost
  
  # Public: #meal_and_tip
  # Adds the total meal cost and the tip together.
  #
  # Params:
  # None
  #
  # Returns: The total meal and tip cost.
  #
  # State Changes:
  # None.
  
  def meal_and_tip
    tip + meal_cost
  end
 
  # Public: #price_divide
  # Calculates how to split the total meal cost evenly between all group members.
  #
  # Params:
  # None
  #
  # Returns: How much each person in the group.
  #
  # State Changes:
  # None.
 
  def price_divide
    total = meal_and_tip / people_amount
    total.ceil.to_i
  end
end

# party_one = CheckSplit.new(4, 40, 15)
# puts "Since your meal is $#{party_one.meal_cost}, and there are #{party_one.people_amount} of you, and you're tipping $#{party_one.tip}..."
# puts "...that means you each owe $#{party_one.price_divide}."
# puts
# party_two = CheckSplit.new(6, 122.64, 20)
# puts "Since your meal is $#{party_two.get_meal_cost}, and there are #{party_two.get_people_amount} of you, and you're tipping $#{party_two.get_tip}..."
# puts "...that means you each owe $#{party_two.price_divide}."
#
# #seems to work fine, just need to round out those decimals...

#binding.pry