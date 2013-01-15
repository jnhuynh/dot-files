class Person
  attr_accessor :name, :number_days_attending
  def initialize(name = '', number_days_attending = 0, status = 'no')
    @name                  = name
    @number_days_attending = number_days_attending
  end
end

class Event
  attr_accessor :cost, :name

  def initialize(cost = 0, name = '')
    @cost = 0
    @name = name
  end
end

def get_individual_event_costs(event, people, options = {})
  options[:number_of_maybe_people] ||= 0
  options[:additional_costs]       ||= 0
  output = { cost_per_person_per_day: (event_cost + options[:additional_costs]) / ( number_of_people * number_of_days) }

  if options[:number_of_maybe_people] > 0
    (1..options[:number_of_maybe_people]).each do |n|
      symbol_string = "cost_per_person_per_day_plus_" + n.to_s + "_maybe"

      output.merge!({ symbol_string.to_sym => (event_cost + options[:additional_costs]) / ((number_of_people + n) * number_of_days) })
    end
  end
  output.each do |key, value|
    string = key.to_s
    string.gsub!(/_/, ' ')
    string += ": $"
    string += value.to_s
    puts string
  end
end

people = []
people << Person.new(name = 'Taryn', number_days_attending = 2, status = 'yes')
people << Person.new(name = 'Spencer', number_days_attending = 2, status = 'yes')
people << Person.new(name = 'Spencer', number_days_attending = 2, status = 'yes')
people << Person.new(name = 'Spencer', number_days_attending = 2, status = 'yes')
