@states = {
  OR: ['Oregon',['Salem','Bend']],
  FL: ['Florida',['Tampa','Miami']],
  CA: ['California',['Los Angeles','Sacramento']],
  NY: ['New York',['Buffalo','Yonkers']],
  MI: ['Michigan',['Lansing','Detroit']]

# #GOT TO LEARN HOW TO INPUT DATA TO SERVERS
#   params = {
#     user: {
#       first_name: "test",
#       last_name: "last"
#     }
#   }
# }
# Got to try this AGAIN
# @states = {
#   OR: {name: 'Oregon', cities: ['']}
# }
# Task 1
@states[:AL] = ["Albama",['Birmingham','Huntsville','Mobile']]
@states[:AK] = ["Alaska",['Anchorage','Juneau']]
# # Task 2
# @cities = {
#   OR: ['Salem','Bend'],
#   FL: ['Tampa','Miami'],
#   CA: ['Los Angeles','Sacramento'],
#   NY: ['Buffalo','Yonkers'],
#   MI: ['Lansing','Detroit'],
#   AL: ['Birmingham','Huntsville','Mobile'],
#   AK: ['Anchorage','Juneau']
# }
# Task 3
def describe_state(state)
  if not @states.has_key? state.to_sym
    puts "Sorry we do not have any relevant data"
  else
    @state[state].cities
    puts "#{state} is for #{(@states[state.to_sym])[0]}. It has #{(@states[state.to_sym])[1].length} major cities: #{(@states[state.to_sym])[1].join(", ")}"
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
  @states.each{|key,value|
    if value[1].include? city
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