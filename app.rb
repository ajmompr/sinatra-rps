require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  "
  <h2>We played rock!</h2>
  <h2>They played rock!</h2>
  <h2>We tied!</h2>
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
