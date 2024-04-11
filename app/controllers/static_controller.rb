class StaticController < ApplicationController
  def homepage
    render({:template => "static/homepage"})
  end

  def roll
    @num_dice = params.fetch(:number_of_dice).to_i
    @num_sides = params.fetch(:how_many_sides).to_i
    @rolls = []
    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end
    render({:template => "static/roll"})
  end

end
