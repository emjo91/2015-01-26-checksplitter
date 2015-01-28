require "pry"

# Class: DinnerClub
#
# Groups of people whom go out together
#
# Attributes:
# @member - Array: Members names, along with what they owe...stored as Hashes
# @visits - Array: Places the Members go/went/will be going.
#
# Public Methods:
# #initialize
# #add_member
# #get_member
# #add_split_check
# #add_visits

class DinnerClub
  def initialize
    @member = []
  end 

  # Public: #add_member
  # Adds members to the new array/hash
  #
  # Parameters:
  # name - Name of the member in the group.
  # owed - A current list of what they owe from eating out.
  #
  # State Changes:
  # Adds to the @member Array.

  def add_member(name, owed)
    @member.push(:name => name, :owed => owed)
  end 
  
  def get_member
    @member
  end
  
  # Public: #add_split_check
  # Will add the split check total from the CheckSplit class to what each memeber owes.
  #
  # Parameters:
  # None yet
  #
  # State Changes:
  # Adds total to the @members Array.
  
  def add_split_check
  end
  
  # Public: #add_visits
  # Will add the places members go on group outtings. WIP
  #
  # Parameters:
  # Visits - Array: Will be stored in an array
  
  def add_visits(visits)
    @visits = Array.new
  end
    
end

breakfast_club = DinnerClub.new
breakfast_club.add_member("Claire", 0)
breakfast_club.add_member("Allison", 0)
breakfast_club.add_member("Brian", 0)
breakfast_club.add_member("Andy", 0)
breakfast_club.add_member("Bender", 0)
breakfast_club.add_visits("Perkins")

puts breakfast_club.inspect

#Trying to find a way to output all the variables...and finding out they're not quite as I expected...?
breakfast_club.get_member.each do |a|   
  a.each do |k,v| # this is a hash
     puts "#{k} #{v}"
  end
end

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
  def initialize (param_one, param_two)
    @people_amount = param_one
    @meal_cost = param_two
    @tip_amount = @meal_cost * 0.30
  end
  
  # Public: #set_tip
  # Overrides the default tip amount.
  #
  # Params:
  # param_three - Integer: sets the tip amount.
  #
  # Returns: Tip amount
  #
  # State Changes:
  # None.
  
  def set_tip (param_three)
    @tip_amount = param_three 
  end
  
  def get_tip
    @tip_amount
  end
  
  def get_people_amount
    @people_amount
  end
  
  def get_meal_cost
    @meal_cost
  end
  
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
    @tip_amount + @meal_cost
  end
 
  # Public: #price_divide
  # Calculates how to split the total meal cost evenly between all group members.
  #
  # Params:
  # None
  #
  # Returns: How much each person in the group owes.
  #
  # State Changes:
  # None.
 
  def price_divide
    meal_and_tip / @people_amount
  end
end

# party_one = CheckSplit.new(4, 40.35)
# party_one.set_tip(15)
# puts "Since your meal is $#{party_one.get_meal_cost}, and there are #{party_one.get_people_amount} of you, and you're tipping $#{party_one.get_tip}..."
# puts "...that means you each owe $#{party_one.price_divide}."
# puts
# party_two = CheckSplit.new(6, 122.64)
# puts "Since your meal is $#{party_two.get_meal_cost}, and there are #{party_two.get_people_amount} of you, and you're tipping $#{party_two.get_tip}..."
# puts "...that means you each owe $#{party_two.price_divide}."
#
# #seems to work fine, just need to round out those decimals...

binding.pry