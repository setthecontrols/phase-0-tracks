#  RELEASES AT BOTTOM.


require_relative 'state_data'

class VirusPredictor

    attr_accessor :STATE_DATA, :instance_for_all_states

  # method responsible for setting the state of the variables listed here at the initialization of a new class instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
  # private

  # method responsible for initiating 2 methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # method responsible for taking 3 arguments (although, at the time i write this, it only uses one argument), and assigning a variable the number of deaths a virus will cause in a state
  # based on population density, as directed by control flow. 
  # state predictions are printed to user after the code has been executed.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # method responsible for taking 2 arguments (although, at the time i write this, it only uses one argument), and assigning a variable the speed at which a virus spreads across a state
  # based on population density, as directed by control flow. 
  # state predictions are printed to user after the code has been executed
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

 
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# Virus Predictor

# I worked on this challenge [by myself.  I missed my GPS].
# We spent [#] hours on this challenge. 
    ##Started at 1330

# Release 0:  EXPLANATION OF WHAT THIS CODE DOES:  this code predects the number of deaths and rate at which the virus spread based on hash data in a required file.  
    ##it predicts deaths on a sliding scale based on multiples of state population  and the rate at which the virus spreads also on a sliding scale, but based on multiples of population density.  
    ##after it's performed its predictions, it prints state results for these arguments:  state_of_origin, population_density, population.

# Release 1:  EXPLANATION OF require_relative:  this tells ruby that a file is required to run the code properly, that the file is on the same computer as the rb file itself.  There will be no path to
    ## the file required if the file is in the exact same directory, but it will have a relative path preceding the file name if it is not in the exact same folder as the rb file, which requires it.
#
# Release 2:  Take a look at the state_data.rb file. What is going on with this hash? What does it have in it? 
    ## The hash contains keys based on states and population density and numbers hash as the values.  
#(HINT: There are two different syntax used for hashes here. What's the difference?) I refer to this giant hash as a "hashy hash;" why do you think that is? 
    ##because it's hashes (as values) in a hash.
#What kind of variable is STATE_DATA, and what's its scope?
    ##it's a constant, which is meant to remain unchange in the program. 


# Release 4
def predict_all_states(states)
  states.each do | states,population_info |
  # p "this is working"
  all_states = VirusPredictor.new(states,population_info[:population_density], population_info[:population])
  all_states.virus_effects
  end
end
predict_all_states(STATE_DATA)

