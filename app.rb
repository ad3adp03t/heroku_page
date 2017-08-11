require 'sinatra'
require_relative "coin_changer.rb"

get '/' do
erb :index
end
get '/home' do
    erb :index
end 
get '/names' do
    erb :names 
end      

get '/user_change' do
    erb :coin_changer_page
end

post '/user_change' do
    cents_received = params[:cents_received]
    coins_returned = params[:coins_returned]
    coins_returned = coin_changer(cents_received)
   
    redirect '/results?cents_received=' + cents_received + '&coins_returned=' + coins_returned
end

get '/results' do
    cents_received = params[:cents_received]
    coins_returned = params[:coins_returned]
   
    erb :results, :locals => {:cents_received => cents_received, :coins_returned => coins_returned}
end