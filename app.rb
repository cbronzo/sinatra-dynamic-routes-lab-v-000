require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end
  
  get '/square/:number' do
   @num = params[:number].to_i
    "#{@num*@num}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@num}"
  end

 get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@phrase}"
  end

end