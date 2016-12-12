# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
class VirusPredictor
#declaring our instance variables and setting the required arguments for new instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#running 2 other methods

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private

  def density_numbers
  if
    @population_density >= 200
    0.4
  elsif
    @population_density >= 150
    0.3
  elsif 
    @population_density >= 100
    0.2
  elsif
    @population_density >= 50
    0.1
  else
    0.05
  end
  end 



#calculating predicted deaths based on multiple population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * density_numbers).floor
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
#summarises results
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #calculating speed of spread based on pop density and location
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5 - (5 * density_numbers).floor
    # speed = 0.0
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
#gives a number of months when it'll be spreaded
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
STATE_DATA.each do |key, value|
  key = VirusPredictor.new(key, value[:population_density], value[:population])
key.virus_effects
end
   
#=======================================================================
# Reflection Section

# # Release 8 
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   * one uses hash rocket and the other uses symbol/value.
# What does require_relative do? How is it different from require?
#   * both allows a script to load a reuquired file and read from it.  require_relative uses a relative path to load a reuquired file and require uses a full path to the file.
# What are some ways to iterate through a hash?
#   * .each, while loop,  .length.times .each_keys .each_values 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   * that the arguments were already passed through initialization of an instance and that they were totally unnecessary as arguments in the method
# What concept did you most solidify in this challenge?
#   * probably the concept of unecessary argument input after having to stare at that one for so long.  
