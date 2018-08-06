require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end
  
  get '/square/:number' do
    @new_number = params[:number].to_i
    "#{@new_number.square.to_s}"
  end
  
  get '/say/:number/:phrase' do
    
    num = params[:number].to_i
    phrase = params[:phrase]
    
    num.times do
     puts "#{phrase}"
    end
    binding.pry
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
        "#{@phrase}"
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
      when "add"
        @total = @num1 + @num2
      when "subtract"
        @total = @num1 - @num2
      when "multiply"
        @total = @num1 * @num2
      when "divide"
        @total = @num1 / @num2
    end
    "#{@total}"
  end
    
  

  

end