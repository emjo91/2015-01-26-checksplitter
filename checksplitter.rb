require "pry"

class DinnerClub
  def initialize
    @member = []
  end 

  def add_member(name, owed)
    @member.push(:name => name, :owed => owed)
  end 
  
  def get_member
    @member
  end
  
  def add_split_check
  end
  
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

#second class
class CheckSplit
  def initialize (param_one, param_two)
    @people_amount = param_one
    @meal_cost = param_two
    @tip_amount = @meal_cost * 0.30
  end
  
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
  
  def meal_and_tip
    @tip_amount + @meal_cost
  end
 
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