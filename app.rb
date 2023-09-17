require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:number_of_dice/:side") do
  @num_dice = params.fetch("number_of_dice").to_i
  @sides = params.fetch("side").to_i
  @rolls = []
  @num_dice.times do
    
    @rolls.push(rand(1..@sides))
  end
  
  erb(:flex)
end
