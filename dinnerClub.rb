require 'pry'
require_relative 'checksplitter'
require_relative 'person'

#Track memebers of the dining club
#Track spending
#Track outings
#Let individual memebers treat their dining group

class DiningClub

  def initialize
    @members = {}
    @event = {}
  end

  def add_member(member)
    @members[member] = Person.new(member)
    @members
  end
  
  def show_members
    @members.each do |member, objs|
      puts member
    end
  end
  
  def remove_members(member)
    @members.delete(member)
    @members
  end
  
  def have_an_outing(meal_cost, tip, *diners)
    cs = CheckSplit.new(meal_cost, tip, diners.length)
    amount_per_person = cs.price_divide
    
    diners.each do |diner|
      if @members.has_key?(diner)
        @members[diner].spend(amount_per_person)
      else
        add_member(diner)
        @members[diner].spend(amount_per_person)
      end
    end  
    @members
  end
  
  def go_to_event(event, *members)
    @event[event] = members
    @event
  end
  
  def show_event_history
    @event.each do |event, member|
      puts event
    end
  end
  
  # def get_spending_report(member)
  #   @member[member]
  # end
  
end

binding.pry