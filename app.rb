require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
      @outcome = "won"
  end  

  "
  <h2> We played rock!</h2>
  <h2> They played #{@comp_move}! </h2>
  <h2> We #{@outcome}! </h2>
  "
end

get("/paper") do
  "
  <h2>We played paper!</h2>
  "
end

get("/scissors") do
  "
  <h2>We played scissors!</h2>
  "
end
