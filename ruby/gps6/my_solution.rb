
#    *** PLEASE READ:  *** please see git_log.txt in same directory as this file for git history.  I screwed something up when i puhsed and created a pull for this.  the file was my old file 
  ## and not this one, so i had to pull my repo back down to my computer and lost my history.  
#  RELEASES AT BOTTOM.


require_relative 'state_data'

class VirusPredictor


  # method responsible for setting the state of the variables listed here at the initialization of a new class instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
  # private

  # method responsible for initiating 2 methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

 # bad idea for release 7
  # def density_status
  #   if @population_density >= 200
  #     greater_or_equal_200 = true
  #   elsif @population_density >= 150
  #     greater_or_equal_150 = true
  #   elsif @population_density >= 100
  #     greater_or_equal_100 = true
  #   elsif @population_density >= 50
  #     greater_or_equal_50 = true
  #   else
  #     less_than_50 = true 
  #   end
  # end

  # method responsible for taking 3 arguments (although, at the time i write this, it only uses 2 arguments), and assigning a variable the number of deaths a virus will cause in a state
  # based on population density, as directed by control flow. 
  # state predictions are printed to user after the code has been executed.
  def predicted_deaths
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
  def speed_of_spread #in months
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
#     * Started at 1330

# # Release 0:  EXPLANATION OF WHAT THIS CODE DOES:  this code predects the number of deaths and rate at which the virus spread based on hash data in a required file.  
#     * it predicts deaths on a sliding scale based on multiples of state population  and the rate at which the virus spreads also on a sliding scale, but based on multiples of population density.  
#     * after it's performed its predictions, it prints state results for these arguments:  state_of_origin, population_density, population.

# # Release 1:  EXPLANATION OF require_relative:  this tells ruby that a file is required to run the code properly, that the file is on the same computer as the rb file itself.  There will be no path to
#     *  the file required if the file is in the exact same directory, but it will have a relative path preceding the file name if it is not in the exact same folder as the rb file, which requires it.
# #
# # Release 2:  Take a look at the state_data.rb file. What is going on with this hash? What does it have in it? 
#     *  The hash contains keys based on states and population density and numbers hash as the values.  
# #(HINT: There are two different syntax used for hashes here. What's the difference?) I refer to this giant hash as a "hashy hash;" why do you think that is? 
#     * because it's hashes (as values) in a hash.
# #What kind of variable is STATE_DATA, and what's its scope?
#     * it's a constant, which is meant to remain unchange in the program. 


# Release 4
def predict_all_states(states)
  states.each do | states,population_info |
  # p "this is working"
  all_states = VirusPredictor.new(states,population_info[:population_density], population_info[:population])
  all_states.virus_effects
  end
end
predict_all_states(STATE_DATA)

# Release 5:
#   * requiring arguments that were already passed through the intialization was redundent.  

# Release 6: Private
# What is the purpose of "private"? What happens if you move it above virus_effects? When would you want to use this method?
  # * it prevents access and usage of a method outside of the class

# Release 7: 
# Refactor the private methods predicted_deaths and speed_of_spread. How can you make them more DRY?
# As an FYI, it's probably not the best decision to combine these methods even though they are similar because they are responsible 
# for different things. If the way to calculate either of these changed and you had combined them, they would be much more difficult to separate.
#   * speed_of_spread did not need to assign speed to 0.0 if it was assigned in the if/else statement.   These two methods use the same calculation on density.  that 
#     * calculation could be put into another method and called instead of run the number of times it is.  i'm not sure how to do this.  can we go over this in session?

# # Release 8 
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   * the container hash uses a string as the key and the hash inside that hash uses a colon after the key name, making that a symbol
# What does require_relative do? How is it different from require?
#   * both allows a script to load a reuquired file and read from it.  require_relative uses a relative path to load a reuquired file and require uses a full path to the file.
# What are some ways to iterate through a hash?
#   * .each, while loop,  .each do
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   * that the arguments were already passed through initialization of an instance and that they were totally unnecessary as arguments in the method
# What concept did you most solidify in this challenge?
#   * probably the concept of unecessary argument input after having to stare at that one for so long.  

