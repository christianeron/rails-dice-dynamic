Rails.application.routes.draw do
  get("/", :controller => "static", :action => "homepage")
  get("/dice/:number_of_dice/:how_many_sides", :controller => "static", :action => "roll")
end
