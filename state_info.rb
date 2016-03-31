@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}
# Task 1
@states[:AL] = "Albama"
@states[:AK] = "Alaska"
# @states = @states.merge({AL: "Alabama", AK: "Alaska"})
# @states.merge!({AL: "Alabama", AK: "Alaska"})
# Task 2
@cities = {
  OR: ['Salem','Bend'],
  FL: ['Tampa','Miami'],
  CA: ['Los Angeles','Sacramento'],
  NY: ['Buffalo','Yonkers'],
  MI: ['Lansing','Detroit'],
  AL: ['Birmingham','Huntsville','Mobile'],
  AK: ['Anchorage','Juneau']
}
# Task 3
def describe_state(state)
  state = state.to_sym
  if not @states.has_key? state.to_sym
    puts "Sorry we do not have any relevant data"
  else
    puts "#{state} is for #{@states[state]}. It has #{@cities[state].length} major cities: #{@cities[state].join(", ")}"
  end
end
# Task 4
@taxes = {
  OR: 7.5,
  FL: 9.0,
  CA: 2.0,
  NY: 3.5,
  MI: 5.0,
  AL: 3.4,
  AK: 2.1
}
# Task 5
def calculate_tax(state,amount)
  if not @states.has_key? state.to_sym
    puts "Sorry we do not have any relevant data"
  else
  puts (amount*(@taxes[state.to_sym].to_f)/100).round(2)
end
end
# Task 6
def find_state_for_city(city)
    @containsCity = false
    @cities.each{|key,value|
      if @cities[key].include? city 
          @region = key
          @containsCity = true
      end
    }
    if @containsCity
     puts "#{city} belongs to this #{@region}"
   else
    puts "Sorry we do not have any relevant data"
   end
end

# Input
puts "Enter an Option:1 => Describe The State 2 => Calculate your tax 3 => Find the State"
option = gets.chomp.to_i

case option
  when 1
    puts "Enter a State"
    state = gets.chomp.upcase
    describe_state(state)
  when 2
    puts "Enter a State"
    state = gets.chomp.upcase
     puts "Enter the amount"
     amount = gets.chomp.to_i
     calculate_tax(state,amount)
   when 3
    puts "Enter the City"
    city = gets.chomp
    find_state_for_city(city)
  else
    puts "Try Again"
end