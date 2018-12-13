require 'sinatra'
# require 'sinatra/reloader'
require ('forecast_io')
require 'sinatra/reloader'
require 'googlebooks'
require './pastries'
require 'csv'
require 'json'

register Sinatra::Reloader


get '/ruN' do
@name = ""
erb :index
end


get '/pastries' do
  @myCake = [
      Cake.new("https://images.unsplash.com/photo-1536599524557-5f784dd53282?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "White Dragon", "$22.00"),
      Cake.new("https://images.unsplash.com/photo-1516054575922-f0b8eeadec1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Black Tropic", "$33.33"),
      Cake.new("https://images.unsplash.com/photo-1517400415121-f913b6f87532?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Blue Berry Thunder", "$25.00")
    ] #this is the cookie array that holds Cake object
    @myCookies = [
        Cookies.new("https://images.pexels.com/photos/189536/pexels-photo-189536.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "Channing Crumbs", "$12"),
        Cookies.new("https://images.unsplash.com/photo-1499636136210-6f4ee915583e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Cocoa Slide", "$14"),
        Cookies.new("https://images.unsplash.com/photo-1497051788611-2c64812349fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Hump Trios", "$11.45")
      ] #this is the cookie array that holds cookies object
      @myMuffin = [
          Muffin.new("https://images.unsplash.com/photo-1481391145929-5bcf567d5211?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Eskimo Dragon", "$8.00"),
          Muffin.new("https://images.pexels.com/photos/8882/love-heart-purple-dessert.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500", "Purple Twist", "$7.50"),
          Muffin.new("https://images.pexels.com/photos/60558/bun-chocolate-sweets-dessert-60558.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "Garyon Thread", "$6.20")
        ] #this is the cookie array that holds cookies object


  erb :index
end
